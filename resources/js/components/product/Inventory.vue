<template>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <input type="text" placeholder="Search here" v-model="search">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Inventory List</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-sm btn-primary" @click="newInventory" v-if="$gate.isAdmin()">
                  <i class="fa fa-plus-square"></i>
                  Add New
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>ID Code</th>
                    <th>Category</th>
                    <th>Description</th>
                    <th>Brand</th>
                    <th>Serial Number</th>
                    <th>Supplier</th>
                    <th>Purchase Cost</th>
                    <th>Purchase Date</th>
                    <th>Name</th>
                    <th>Status</th>
                    <th>Notes</th>
                    <th>Check Date</th>
                    <th>Checked By</th>
                    <th v-if="$gate.isAdmin()">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="inventory in inventories.data" :key="inventory.id">
                    <td>{{inventory.idcode}}</td>
                    <td>{{inventory.category.name}}</td>
                    <td>{{inventory.description | truncate(30, '...')}}</td>
                    <td>{{inventory.brand}}</td>
                    <td>{{inventory.serialnumber}}</td>
                    <td>{{inventory.supplier}}</td>
                    <td>{{inventory.purchasecost}}</td>
                    <td>{{inventory.purchasedate}}</td>
                    <td>{{inventory.name}}</td>
                    <td>{{inventory.status}}</td>
                    <td>{{inventory.notes | truncate(30, '...')}}</td>
                    <td>{{inventory.checkdate | format('DD MMMM YYYY')}}</td>
                    <td>{{inventory.checkedby}}</td>
                    <td v-if="$gate.isAdmin()">
                      <a href="#" @click="editInventory(inventory)">
                        <i class="fa fa-edit blue"></i>
                      </a>
                      /
                      <a href="#" @click="deleteInventory(inventory.id)">
                        <i class="fa fa-trash red"></i>
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>

            <!-- /.card-body -->
            <div class="card-footer">
              <pagination :data="inventories" @pagination-change-page="getResults"></pagination>
            </div>
          </div>
          <pre>{{inventories}}</pre>
          <!-- /.card -->
        </div>
      </div>

      <!-- Modal -->
      <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNew" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" v-show="!editmode">Create New Inventory</h5>
              <h5 class="modal-title" v-show="editmode">Edit Inventory</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <form @submit.prevent="editmode ? updateInventory() : createInventory()">
              <div class="modal-body">

                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label>ID Code</label>
                    <input v-model="form.idcode" type="text" name="idcode" class="form-control" :class="{ 'is-invalid': form.errors.has('idcode') }">
                    <has-error :form="form" field="idcode"></has-error>
                  </div>
                  <div class="form-group col-md-6">
                    <label>Category</label>
                    <select class="form-control" v-model="form.category_id">
                      <option v-for="(cat,index) in categories" :key="index" :value="index" :selected="index == form.category_id">{{ cat }}</option>
                    </select>
                    <has-error :form="form" field="category_id"></has-error>
                  </div>
                </div>

                <div class="form-group">
                  <label>Description</label>
                  <input v-model="form.description" type="text" name="description" class="form-control" :class="{ 'is-invalid': form.errors.has('description') }">
                  <has-error :form="form" field="description"></has-error>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label>Brand</label>
                    <input v-model="form.brand" type="text" name="brand" class="form-control" :class="{ 'is-invalid': form.errors.has('brand') }">
                    <has-error :form="form" field="brand"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Serial Number</label>
                    <input v-model="form.serialnumber" type="text" name="serialnumber" class="form-control" :class="{ 'is-invalid': form.errors.has('serialnumber') }">
                    <has-error :form="form" field="serialnumber"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Supplier</label>
                    <input v-model="form.supplier" type="text" name="supplier" class="form-control" :class="{ 'is-invalid': form.errors.has('supplier') }">
                    <has-error :form="form" field="supplier"></has-error>
                  </div>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label>Purchase Cost</label>
                    <input v-model="form.purchasecost" type="text" name="purchasecost" class="form-control" :class="{ 'is-invalid': form.errors.has('purchasecost') }">
                    <has-error :form="form" field="purchasecost"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Purchase Date</label>
                    <date-picker format="DD MMMM YYYY" v-model="form.purchasedate" name="purchasedate" class="form-control" :class="{ 'is-invalid': form.errors.has('purchasedate') }"></date-picker>
                    <has-error :form="form" field="purchasedate"></has-error>
                  </div>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-8">
                    <label>Name</label>
                    <input v-model="form.name" type="text" name="name" class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
                    <has-error :form="form" field="name"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Status</label>
                    <select class="form-control" v-model="form.status">
                      <option>Storage</option>
                      <option>Deployed</option>
                      <option>Broken</option>
                    </select>
                    <has-error :form="form" field="status"></has-error>
                  </div>
                </div>

                <div class="form-group">
                  <label>Notes</label>
                  <input v-model="form.notes" type="text" name="notes" class="form-control" :class="{ 'is-invalid': form.errors.has('notes') }">
                  <has-error :form="form" field="notes"></has-error>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label>Check Date</label>
                    <date-picker format="DD MMMM YYYY" v-model="form.checkdate" name="checkdate" class="form-control" :class="{ 'is-invalid': form.errors.has('checkdate') }"></date-picker>
                    <has-error :form="form" field="checkdate"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Checked By</label>
                    <select class="form-control" v-model="form.checkedby">
                      <option>Dimas</option>
                      <option>Maudy</option>
                      <option>Adith</option>
                    </select>
                    <has-error :form="form" field="checkedby"></has-error>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button v-show="editmode" type="submit" class="btn btn-success">Update</button>
                <button v-show="!editmode" type="submit" class="btn btn-primary">Create</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>


<script>
import DatePicker from "vue2-datepicker";
import "vue2-datepicker/index.css";

export default {
  data() {
    return {
      editmode: false,
      inventories: [],
      search: "",
      form: new Form({
        id: "",
        idcode: "",
        category: "",
        category_id: "",
        description: "",
        brand: "",
        serialnumber: "",
        supplier: "",
        purchasecost: "",
        purchasedate: "",
        username: "",
        status: "",
        notes: "",
        checkdate: "",
        checkedby: "",
      }),
      categories: [],
    };
  },
  methods: {
    getResults(page = 1) {
      this.$Progress.start();

      axios
        .get("/api/inventory?page=" + page)
        .then(({ data }) => (this.inventories = data.data))
        .catch((error) => console.log(error));

      this.$Progress.finish();
    },
    loadInventory() {
      // if(this.$gate.isAdmin()){
      axios
        .get("/api/inventory")
        .then(({ data }) => (this.inventories = data.data))
        .catch((error) => console.log(error));
      // }
    },
    loadCategories() {
      axios
        .get("/api/category/list")
        .then(({ data }) => (this.categories = data.data))
        .catch((error) => console.log(error));
    },
    editInventory(inventory) {
      this.editmode = true;
      this.form.reset();
      $("#addNew").modal("show");
      this.form.fill(inventory);
    },
    newInventory() {
      this.editmode = false;
      this.form.reset();
      $("#addNew").modal("show");
    },
    createInventory() {
      this.$Progress.start();
      this.form
        .post("/api/inventory")
        .then((data) => {
          if (data.data.success) {
            $("#addNew").modal("hide");
            Toast.fire({
              icon: "success",
              title: data.data.message,
            });
            this.$Progress.finish();
            this.loadInventory();
          } else {
            Toast.fire({
              icon: "error",
              title: "Some error occured! Please try again",
            });
            this.$Progress.failed();
          }
        })
        .catch(() => {
          Toast.fire({
            icon: "error",
            title: "Some error occured! Please try again",
          });
        });
    },
    updateInventory() {
      this.$Progress.start();
      this.form
        .put("api/inventory/" + this.form.id)
        .then((response) => {
          // success
          $("#addNew").modal("hide");
          Toast.fire({
            icon: "success",
            title: response.data.message,
          });
          this.$Progress.finish();
          //  Fire.$emit('AfterCreate');

          this.loadInventory();
        })
        .catch(() => {
          this.$Progress.fail();
        });
    },
    deleteInventory(id) {
      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#3085d6",
        confirmButtonText: "Yes, delete it!",
      }).then((result) => {
        // Send request to the server
        if (result.value) {
          this.form
            .delete("api/inventory/" + id)
            .then(() => {
              Swal.fire("Deleted!", "Your record has been deleted.", "success");
              // Fire.$emit('AfterCreate');
              this.loadInventory();
            })
            .catch((data) => {
              Swal.fire("Failed!", data.message, "warning");
            });
        }
      });
    },
  },
  mounted() {},
  created() {
    this.$Progress.start();
    this.loadInventory();
    this.loadCategories();
    this.$Progress.finish();
  },

  computed: {
    filteredItem() {
      const search = this.search.toLowerCase();
      const data = [];

      this.inventories.forEach((current_page) => {
        current_page.data.forEach((d) => {
          const idcode = d.idcode.toLowerCase();

          if (idcode.includes(search)) {
            data.push(d);
          }
        });
      });
      return data;
    },
  },
  components: { DatePicker },
};
</script>

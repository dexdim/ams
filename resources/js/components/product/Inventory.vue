<template>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <download-excel :data="all" class="btn btn-sm btn-primary">
                Download CSV
              </download-excel>

              <div class="card-tools">
                <button type="button" class="btn btn-sm btn-primary" @click="newInventory" v-if="$gate.isAdmin()">
                  <i class="fa fa-plus-square"></i>
                  Add New
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class=" table table-hover table-bordered table-condensed">
                <thead class="thead-dark text-center">
                  <tr>
                    <th width="5%">ID Code</th>
                    <th width="2%">QR</th>
                    <th width="5%">Category</th>
                    <th width="25%">Description</th>
                    <th>Serial Number</th>
                    <th width="15%">User</th>
                    <th width="15%">Email</th>
                    <th width="7.5%">Status</th>
                    <th width="10%">Date</th>
                    <th>PIC</th>
                    <th v-if="$gate.isAdmin()">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="inventory in inventories.data" :key="inventory.id">
                    <td>{{ inventory.idcode }}</td>
                    <td class="text-center"><img :src="'https://chart.googleapis.com/chart?chs=250x250&cht=qr&chl=' + inventory.idcode" width="30px"></td>
                    <td>{{ inventory.category.name }}</td>
                    <td>{{ inventory.description }}</td>
                    <td>{{ inventory.serialnumber }}</td>
                    <td>{{ inventory.name }}</td>
                    <td>{{ inventory.email }}</td>
                    <td>{{ inventory.status }}</td>
                    <td>{{ formatDate(inventory.checkdate) }}</td>
                    <td>{{ inventory.checkedby }}</td>
                    <td class="text-center" v-if="$gate.isAdmin()">
                      <a href="#" @click="editInventory(inventory)">
                        <i class="fa fa-edit blue"></i>
                      </a>
                      <a href="#" @click="duplicateInventory(inventory.id)">
                        <i class="fa fa-copy green"></i>
                      </a>
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
              <pagination :data="inventories" @pagination-change-page="getResults" :limit=25></pagination>
            </div>
          </div>
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
                      <option v-for="(cat, index) in categories.data" :key="index" :value="index" :selected="index == form.category_id">{{ cat }}</option>
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
                  <div class="form-group col-md-4 clearfix">
                    <label>Purchase Date</label>
                    <DatetimePicker v-model="form.purchasedate" :format="'DD-MMMM-YYYY'" :show-clear="true" :use-current="true" name="purchasedate" class="form-control" :class="{ 'is-invalid': form.errors.has('purchasedate') }" />
                    <has-error :form="form" field="purchasedate"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Status</label>
                    <select class="form-control" v-model="form.status">
                      <option>Storage</option>
                      <option>Deployed</option>
                      <option>Broken</option>
                      <option>Sold</option>
                      <option>Working</option>
                    </select>
                    <has-error :form="form" field="status"></has-error>
                  </div>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label>User</label>
                    <select class="form-control" v-model="form.name">
                      <option v-for="emp in employees" :value="emp.name" :selected="emp.name == form.name" :key="emp.id">{{ emp.name }}</option>
                    </select>
                    <has-error :form="form" field="name"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Email</label>
                    <input type="text" name="email" class="form-control" v-model="form.email" readonly>
                    <has-error :form="form" field="email"></has-error>
                  </div>
                  <div class="form-group col-md-4">
                    <label>Department</label>
                    <input type="text" name="dept" class="form-control" v-model="form.dept" readonly>
                    <has-error :form="form" field="dept"></has-error>
                  </div>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label>User History</label>
                    <select class="form-control" v-model="form.history">
                      <option v-for="emp in employees_history" :value="emp.name" :selected="emp.name == form.name" :key="emp.id">{{ emp.name }}</option>
                    </select>
                    <has-error :form="form" field="history"></has-error>
                  </div>
                  <div class="form-group col-md-6">
                    <label>Notes</label>
                    <input v-model="form.notes" type="text" name="notes" class="form-control" :class="{ 'is-invalid': form.errors.has('notes') }">
                    <has-error :form="form" field="notes"></has-error>
                  </div>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label>Check Date</label>
                    <DatetimePicker v-model="form.checkdate" :format="'DD-MMMM-YYYY'" :show-clear="true" :use-current="true" name="checkdate" class="form-control" :class="{ 'is-invalid': form.errors.has('checkdate') }" />
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
      <pre>{{ inventories }}</pre>
    </div>
  </section>
</template>


<script>
import DatetimePicker from "vue-bootstrap-datetimepicker";
import "pc-bootstrap4-datetimepicker/build/css/bootstrap-datetimepicker.css";

export default {
  data() {
    return {
      editmode: false,

      inventories: [],
      all: [],
      search: null,
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
        name: "",
        email: "",
        status: "",
        notes: "",
        history: "",
        checkdate: "",
        checkedby: "",
      }),
      categories: [],
      employees: [],
      employees_history: [],
    };
  },
  methods: {
    getResults(page = 1) {
      this.$Progress.start();

      axios
        .get("/api/inventory?page=" + page)
        .then((data) => (this.inventories = data.data.data))
        .catch((error) => console.log(error));

      this.$Progress.finish();
    },

    loadAll() {
      // if(this.$gate.isAdmin()){
      axios
        .get("/api/inventory/all")
        .then((data) => (this.all = data.data.data))
        .catch((error) => console.log(error));
      // }
    },

    loadInventory() {
      // if(this.$gate.isAdmin()){
      axios
        .get("/api/inventory")
        .then((data) => (this.inventories = data.data.data))
        .catch((error) => console.log(error));
      // }
    },
    loadCategory() {
      axios
        .get("/api/category/list")
        .then((data) => (this.categories = data.data))
        .catch((error) => console.log(error));
    },
    loadEmployee() {
      axios
        .get("/api/employee/list")
        .then((data) => (this.employees = data.data.data))
        .catch((error) => console.log(error));
    },
    loadEmployeeHistory() {
      axios
        .get("/api/employee/list")
        .then((data) => (this.employees_history = data.data.data))
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
        .then((response) => {
          if (response.data.success) {
            $("#addNew").modal("hide");
            Toast.fire({
              icon: "success",
              title: response.data.message,
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
    duplicateInventory(id) {
      Swal.fire({
        title: "Are you sure?",
        text: "You will duplicate a record of this row",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#3085d6",
        confirmButtonText: "Yes, duplicate it!",
      }).then((result) => {
        // Send request to the server
        if (result.value) {
          this.form
            .post("api/inventory/duplicate/" + id)
            .then(() => {
              Swal.fire(
                "Duplicated!",
                "Your record has been duplicated.",
                "success"
              );
              // Fire.$emit('AfterCreate');
              this.loadInventory();
            })
            .catch((data) => {
              Swal.fire("Failed!", data.message, "warning");
            });
        }
      });
    },

    formatDate(dateString) {
      const date = new Date(dateString);
      const options = { day: "numeric", month: "long", year: "numeric" };
      return date.toLocaleDateString("en-US", options);
    },
  },
  mounted() {},
  created() {
    this.$Progress.start();
    this.loadAll();
    this.loadInventory();
    this.loadCategory();
    this.loadEmployee();
    this.loadEmployeeHistory();
    Fire.$on("searching", () => {
      let query = this.$parent.search;
      axios
        .get("api/findItem?q=" + query)
        .then((data) => (this.inventories = data.data));
    });
    this.$Progress.finish();
  },

  computed: {
    filteredItems() {
      return this.items.filter((item) => {
        const idcode = item.idcode.toString().toLowerCase();
        const username = item.username.toString.toLowerCase();
        const result = this.search.toLowerCase();
        return idcode.includes(result) || username.includes(result);
      });
    },
  },
  components: { DatetimePicker },

  watch: {
    "form.name"(value) {
      const selectedOption = this.employees.find((emp) => emp.name === value);
      this.form.email = selectedOption ? selectedOption.email : "";
      this.form.dept = selectedOption ? selectedOption.dept : "";
    },

    "form.status"(value) {
      if (value === "Storage" || value === "Working") {
        this.form.name = this.employees.find((emp) => emp.name === "-").name;
      } else {
        this.employee;
      }
    },
  },
};
</script>

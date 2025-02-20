<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">


        <li class="nav-item">
            <router-link to="/dashboard" class="nav-link">
                <i class="nav-icon fas fa-chart-bar purple"></i>
                <p>
                    Dashboard
                </p>
            </router-link>
        </li>
        <li class="nav-item">
            <router-link to="/inventory" class="nav-link">
                <i class="nav-icon fas fa-table blue"></i>
                <p>
                    Inventory
                </p>
            </router-link>
        </li>
        <li class="nav-item">
            <router-link to="/category" class="nav-link">
                <i class="nav-icon fas fa-list orange"></i>
                <p>
                    Category
                </p>
            </router-link>
        </li>
        <li class="nav-item">
            <router-link to="/employee" class="nav-link">
                <i class="nav-icon fas fa-users green"></i>
                <p>
                    Employee
                </p>
            </router-link>
        </li>


        @can('isAdmin')
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="nav-icon fas fa-cog black"></i>
                    <p>
                        Settings
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">



                    <li class="nav-item">
                        <router-link to="/users" class="nav-link">
                            <i class="fa fa-user-tie nav-icon blue"></i>
                            <p>
                                User
                            </p>
                        </router-link>
                    </li>

                    <li class="nav-item">
                        <router-link to="/developer" class="nav-link">
                            <i class="nav-icon fas fa-cogs white"></i>
                            <p>
                                Developer
                            </p>
                        </router-link>
                    </li>
                </ul>
            </li>
        @endcan



        <li class="nav-item">
            <a href="#" class="nav-link"
                onclick="event.preventDefault();
          document.getElementById('logout-form').submit();">
                <i class="nav-icon fas fa-power-off red"></i>
                <p>
                    {{ __('Logout') }}
                </p>
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </li>
    </ul>
</nav>

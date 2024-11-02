import Home from '../contaniner/Home';
import Data from '../contaniner/Data';
import User from '../contaniner/User';
import Login from '../contaniner/Login';
import Detail from '../contaniner/Detail';
import Account from '../contaniner/Account'
import About from '../contaniner/About'
import UserInfo from '../contaniner/UserInfo'

const routes = [
  {
    path: "/",
    element: <Home/>
  },
  {
    path: "/data",
    element: <Data/>
  },
  {
    path: "/user",
    element: <User/>
  },
  {
    path: '/login',
    element: <Login/>
  },
  {
    path: '/detail',
    element: <Detail/>
  },
  {
    path: "/account",
    element: <Account/>
  },
  {
    path: "/about",
    element: <About/>
  },
  {
    path: "/userinfo",
    element: <UserInfo/>
  }
];

export default routes
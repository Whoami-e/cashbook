import { useLocation, useRoutes } from 'react-router-dom';
import routes from './router';
import NavBar from './components/NavBar';
import { ConfigProvider } from 'zarm'
import zhCN from 'zarm/lib/config-provider/locale/zh_CN'
import { useState, useEffect } from 'react';

function App() {
  let element = useRoutes(routes);
  const location = useLocation() // 拿到 location 实例
  const { pathname } = location // 获取当前路径
  const needNav = ['/', '/data', '/user'] // 需要底部导航栏的路径
  const [showNav, setShowNav] = useState(false) // 是否展示 Nav
  useEffect(() => {
    setShowNav(needNav.includes(pathname))
  }, [pathname]) // [] 内的参数若是变化，便会执行上述回调函数=
  return (
    <>
      <ConfigProvider primaryColor={'#007fff'} locale={zhCN}>
        {element}
      </ConfigProvider>
      <NavBar showNav={showNav} />
    </>
  )
}

export default App

import React from 'react';
import PropTypes from 'prop-types';
import { useNavigate } from 'react-router-dom'
import { NavBar, Icon } from 'zarm';
import { ArrowLeft } from '@zarm-design/icons';

import s from './style.module.less'

const Header = ({ title = '' }) => {
  const navigateTo = useNavigate()

  function goBack(){
    
    console.log(1111);
    navigateTo(-1); 
  }
  return <div className={s.headerWarp}>
    <div className={s.block}>
      <NavBar
        className={s.header}
        // left={<Icon type="arrow-left" theme="primary" onClick={() => goBack()} />}
        left={<ArrowLeft theme="primary" onClick={() => goBack()} />}
        title={title}
      />
    </div>
  </div>
};

Header.propTypes = {
  title: PropTypes.string, // 标题
};

export default Header;
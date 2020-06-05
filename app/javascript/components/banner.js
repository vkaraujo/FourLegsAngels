import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Save Pets Lives!"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
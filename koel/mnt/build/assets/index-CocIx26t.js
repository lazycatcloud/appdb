import{S as g,A as w,a as z,P as M,W as P,b as S,c as b,M as E}from"./three.module-t9eRE-tX.js";import"./userStore-DI58VgZ6.js";import{l as L}from"./app-Dh_3ddLE.js";import"./index-bkhK2U3_.js";import"./Btn-2hiIT76k.js";import"./common-Qp7bRr50.js";import"./index-BBRRzm9T.js";const f={vertex:`
        varying float x;
        varying float y;
        varying float z;
        varying vec3 vUv;
        uniform float u_time;
        uniform float u_amplitude;
        uniform float[64] u_data_arr;
        void main() {
          vUv = position;
          x = abs(position.x);
          y = abs(position.y);
          float floor_x = round(x);
          float floor_y = round(y);
          float x_multiplier = (64.0 - x) / 4.0;
          float y_multiplier = (64.0 - y) / 4.0;
          z = sin(u_data_arr[int(floor_x)] / 40.0 + u_data_arr[int(floor_y)] / 40.0) * u_amplitude;
          gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x, position.y, z, 1.0);
        }
    `,fragment:`
        varying float x;
        varying float y;
        varying float z;
        varying vec3 vUv;
        uniform float u_time;
        uniform float[64] u_data_arr;
        void main() {
          // gl_FragColor = vec4((u_data_arr[32])/205.0, 0, (u_data_arr[8])/205.0, 1.0);
          gl_FragColor = vec4((64.0 - abs(x)) / 32.0, (32.0 - abs(y)) / 32.0, (abs(x + y) / 2.0) / 32.0, 1.0);
        }
    `},I=[{rotation:{x:-Math.PI/2},scale:2,position:{x:0,y:40,z:10}},{rotation:{x:Math.PI/2},scale:2,position:{x:0,y:-40,z:10}},{rotation:{y:Math.PI/2},scale:2,position:{x:40,y:0,z:10}},{rotation:{y:-Math.PI/2},scale:2,position:{x:-40,y:0,z:10}},{rotation:{x:-Math.PI/2},scale:2,position:{x:0,y:40,z:-118}},{rotation:{x:Math.PI/2},scale:2,position:{x:0,y:-40,z:-118}},{rotation:{y:Math.PI/2},scale:2,position:{x:40,y:0,z:-118}},{rotation:{y:-Math.PI/2},scale:2,position:{x:-40,y:0,z:-118}}],G=i=>{const l={u_time:{type:"f",value:2},u_amplitude:{type:"f",value:4},u_data_arr:{type:"float[64]",value:new Uint8Array}},s=L.analyzer;s.fftSize=1024;const d=new Uint8Array(s.frequencyBinCount),c=i.clientWidth,p=i.clientHeight,n=new g,y=new w(11184810);y.castShadow=!1;const r=new z(16777215);r.intensity=.9,r.position.set(-10,40,20),r.castShadow=!0;const o=new M(85,c/p,1,1e3);o.position.z=80;const a=new P;a.setSize(c,p),a.setClearAlpha(0),i.appendChild(a.domElement);const v=new S(64,64,64,64),x=new b({uniforms:l,vertexShader:f.vertex,fragmentShader:f.fragment,wireframe:!0});I.forEach(t=>{const e=new E(v,x);t.rotation.x==null?e.rotation.y=t.rotation.y:e.rotation.x=t.rotation.x,e.scale.x=t.scale,e.scale.y=t.scale,e.scale.z=t.scale,e.position.x=t.position.x,e.position.y=t.position.y,e.position.z=t.position.z,n.add(e)}),n.add(y),n.add(r);const _=()=>{s.getByteFrequencyData(d),l.u_data_arr.value=d,o.rotation.z+=.001,a.render(n,o)},m=()=>{requestAnimationFrame(m),_()},h=()=>{const t=i.clientWidth,e=i.clientHeight;a.setSize(t,e),o.aspect=t/e,o.updateProjectionMatrix(),a.domElement.width=t,a.domElement.height=e},u=t=>{const e=o.position.z+t.deltaY/100;o.position.z=Math.min(Math.max(e,0),256)};return window.addEventListener("resize",h),document.addEventListener("wheel",u),m(),()=>{a.domElement.remove(),a.dispose(),window.removeEventListener("resize",h),document.removeEventListener("wheel",u)}};export{G as init};

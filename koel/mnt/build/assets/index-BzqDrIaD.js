import{P as m,C as d,S as u,d as l,W as v,A as f,a as p,b as y,c as w,M as g}from"./three.module-t9eRE-tX.js";import"./userStore-DI58VgZ6.js";import{l as _}from"./app-Dh_3ddLE.js";import"./index-bkhK2U3_.js";import"./Btn-2hiIT76k.js";import"./common-Qp7bRr50.js";import"./index-BBRRzm9T.js";class x{constructor(e,i=36){this.container=e,this.fov=i,this.camera=new m(this.fov,this.container.clientWidth/this.container.clientHeight,1,1e3),this.camera.position.z=128,this.clock=new d,this.scene=new u,this.uniforms={u_time:{type:"f",value:1},colorB:{type:"vec3",value:new l(16773120)},colorA:{type:"vec3",value:new l(16777215)}},this.renderer=new v({antialias:!0}),this.renderer.setSize(this.container.clientWidth,this.container.clientHeight),e.appendChild(this.renderer.domElement);const n=new f(16777215,.7);n.castShadow=!1,this.scene.add(n);const a=new p(16777215,.55);a.castShadow=!0,a.position.set(0,80,10),this.scene.add(a),this.onWindowResize=()=>{this.camera.aspect=this.container.clientWidth/this.container.clientHeight,this.camera.updateProjectionMatrix(),this.renderer.setSize(this.container.clientWidth,this.container.clientHeight)},this.onDocumentWheel=r=>{const o=this.camera.position.z+r.deltaY/100;this.camera.position.z=Math.min(Math.max(o,84),256)},window.addEventListener("resize",this.onWindowResize,!1),document.addEventListener("wheel",this.onDocumentWheel,!1)}animate(){requestAnimationFrame(this.animate.bind(this)),this.render()}render(){this.uniforms.u_time.value+=this.clock.getDelta(),this.renderer.render(this.scene,this.camera)}destroy(){window.removeEventListener("resize",this.onWindowResize,!1),document.removeEventListener("wheel",this.onDocumentWheel,!1),this.renderer.domElement.remove(),this.renderer.dispose()}}const h={vertex:`
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
      z = sin(u_data_arr[int(floor_x)] / 50.0 + u_data_arr[int(floor_y)] / 20.0) * u_amplitude * 2.0;
      gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x, position.y, z, 1.0);
    }
  `,fragment:`
    varying float x;
    varying float y;
    varying float z;
    varying vec3 vUv;
    uniform float u_time;
    void main() {
      gl_FragColor = vec4((32.0 - abs(x)) / 32.0, (32.0 - abs(y)) / 32.0, (abs(x + y) / 2.0) / 32.0, 1.0);
    }
  `},A=s=>{const e=new x(s),i=_.analyzer;i.fftSize=512;let n=new Uint8Array(i.frequencyBinCount);const a={u_time:{type:"f",value:1},u_amplitude:{type:"f",value:3},u_data_arr:{type:"float[64]",value:n}},r=new y(64,64,64,64),o=new w({uniforms:a,vertexShader:h.vertex,fragmentShader:h.fragment,wireframe:!0}),t=new g(r,o);t.rotation.x=-Math.PI/2+Math.PI/4,t.scale.x=2,t.scale.y=2,t.scale.z=2,t.position.y=8,e.scene.add(t);const c=()=>{i.getByteFrequencyData(n),requestAnimationFrame(c)};return c(),e.animate(),()=>e.destroy()};export{A as init};

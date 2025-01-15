"use strict";var T=Object.defineProperty;var R=Object.getOwnPropertyDescriptor;var L=Object.getOwnPropertyNames;var B=Object.prototype.hasOwnProperty;var D=(e,t)=>{for(var n in t)T(e,n,{get:t[n],enumerable:!0})},H=(e,t,n,s)=>{if(t&&typeof t=="object"||typeof t=="function")for(let o of L(t))!B.call(e,o)&&o!==n&&T(e,o,{get:()=>t[o],enumerable:!(s=R(t,o))||s.enumerable});return e};var O=e=>H(T({},"__esModule",{value:!0}),e);var U={};D(U,{default:()=>k});module.exports=O(U);var f=require("react"),r=require("@raycast/api");var i=require("@raycast/api"),A=require("react");var g=require("node:child_process");var y=Object.assign({},process.env,{PATH:"/usr/local/bin:/usr/bin:/opt/homebrew/bin"});var c=require("@raycast/api");var w=require("@raycast/api"),$=require("child_process");async function b(e){let n=!!await w.LocalStorage.getItem("terminalAppBundleId");return e(n),n}async function v(){let e=await w.LocalStorage.getItem("terminalAppBundleId");(0,$.execSync)(`open -b ${e}`)}function h(e){return(0,g.exec)("tmux list-sessions | awk '{print $1}' | sed 's/://'",{env:y},e)}function E(e,t,n){return(0,g.exec)(`tmux rename-session -t ${e} ${t}`,{env:y},n)}async function F(e,t){let n=await(0,c.showToast)({style:c.Toast.Style.Animated,title:""});t(!0),(0,g.exec)(`tmux switch -t ${e}`,{env:y},async(s,o,u)=>{if(s||u){console.error(`exec error: ${s||u}`),n.style=c.Toast.Style.Failure,n.title="No tmux client found \u{1F622}",n.message=s?s.message:u,t(!1);return}try{await v(),n.style=c.Toast.Style.Success,n.title=`Switched to session ${e}`,await(0,c.showHUD)(`Switched to session ${e}`),t(!1)}catch{n.style=c.Toast.Style.Failure,n.title="Terminal not supported \u{1F622}",t(!1)}})}async function I(e,t,n){t(!0);let s=await(0,c.showToast)({style:c.Toast.Style.Animated,title:""});(0,g.exec)(`tmux kill-session -t ${e}`,{env:y},(o,u,d)=>{if(o||d){console.error(`exec error: ${o||d}`),s.style=c.Toast.Style.Failure,s.title="Something went wrong \u{1F622}",s.message=o?o.message:d,t(!1);return}s.style=c.Toast.Style.Success,s.title=`Deleted session ${e}`,n(),t(!1)})}var x=require("react/jsx-runtime"),P=({session:e,callback:t})=>{let[n,s]=(0,A.useState)(!1),[o,u]=(0,A.useState)(""),{pop:d}=(0,i.useNavigation)();return(0,x.jsx)(i.Form,{isLoading:n,navigationTitle:"Rename Tmux Session",actions:(0,x.jsx)(i.ActionPanel,{children:(0,x.jsx)(i.Action.SubmitForm,{title:"Rename Session",onSubmit:async p=>{let a=p.renamedSession;s(!0);let l=await(0,i.showToast)({style:i.Toast.Style.Animated,title:""});if(a===e){l.style=i.Toast.Style.Failure,l.message="Session name is not changed",s(!1);return}E(e,a,(S,C,N)=>{if(S||N){console.error(`exec error: ${S}`),s(!1),l.style=i.Toast.Style.Failure,l.message="Failed to rename session";return}l.style=i.Toast.Style.Success,l.style=i.Toast.Style.Success,l.message=`Session has been renamed to ${a}`,s(!1),t&&t(),d()})}})}),children:(0,x.jsx)(i.Form.TextField,{title:"Renamed Session",id:"renamedSession",error:o,defaultValue:e,onChange:p=>{!p||p.length===0||p===e||h((a,l,S)=>{(a||S)&&(console.error(`exec error: ${a}`),s(!1)),l.trim().split(`
`).includes(p)?u("Session name already exists, you can not rename to"):u("")})}})})};var m=require("react/jsx-runtime");function k(){let[e,t]=(0,f.useState)([]),[n,s]=(0,f.useState)(!0),[o,u]=(0,f.useState)(!1),{push:d}=(0,r.useNavigation)(),p=()=>{h((a,l)=>{if(a){console.error(`exec error: ${a}`),s(!1);return}let S=l.trim().split(`
`);S?.length>0&&t(S),s(!1)})};return(0,f.useEffect)(()=>{(async()=>{if(s(!0),!await b(u)){s(!1);return}})()},[]),(0,f.useEffect)(()=>{o&&(s(!0),p())},[o]),(0,f.useEffect)(()=>{!o&&!n&&(0,r.launchCommand)({type:r.LaunchType.UserInitiated,name:"choose_terminal_app",extensionName:"tmux-sessioner",ownerOrAuthorName:"louishuyng",context:{launcherCommand:"index"}})},[o,n]),(0,m.jsx)(m.Fragment,{children:(0,m.jsx)(r.List,{isLoading:n,children:e.map((a,l)=>(0,m.jsx)(r.List.Item,{icon:r.Icon.Terminal,title:a,actions:(0,m.jsxs)(r.ActionPanel,{children:[(0,m.jsx)(r.Action,{title:"Switch to Selected Session",onAction:()=>F(a,s)}),(0,m.jsx)(r.Action,{title:"Rename This Session",onAction:()=>{d((0,m.jsx)(P,{session:a,callback:()=>p()}))},shortcut:{modifiers:["cmd"],key:"r"}}),(0,m.jsx)(r.Action,{title:"Delete This Session",onAction:()=>I(a,s,()=>t(e.filter(S=>S!==a))),shortcut:{modifiers:["ctrl"],key:"x"}})]})},l))})})}

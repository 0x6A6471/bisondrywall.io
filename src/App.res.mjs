// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as MainLayout from "./layouts/MainLayout.res.mjs";
import * as Router from "next/router";
import * as JsxRuntime from "react/jsx-runtime";

function $$default(props) {
  var router = Router.useRouter();
  var content = React.createElement(props.Component, props.pageProps);
  var match = router.route;
  if (match === "/examples") {
    return JsxRuntime.jsxs(MainLayout.make, {
                children: [
                  JsxRuntime.jsx("h1", {
                        children: "Examples Section",
                        className: "font-bold"
                      }),
                  JsxRuntime.jsx("div", {
                        children: content
                      })
                ]
              });
  } else {
    return JsxRuntime.jsx(MainLayout.make, {
                children: content
              });
  }
}

export {
  $$default as default,
}
/* react Not a pure module */

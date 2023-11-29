/*
 * Copyright 2020 Red Hat, Inc. and/or its affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import * as React from "../../../resources/web_modules/react.js";
import { WarningTriangleIcon } from "../../../resources/web_modules/@patternfly/react-icons.js";
import { Msg } from "../../widgets/Msg.js";
import EmptyMessageState from "../../widgets/EmptyMessageState.js";
export class ForbiddenPage extends React.Component {
  constructor() {
    super({});
  }
  render() {
    return /*#__PURE__*/React.createElement(EmptyMessageState, {
      icon: WarningTriangleIcon,
      messageKey: "forbidden"
    }, /*#__PURE__*/React.createElement(Msg, {
      msgKey: "needAccessRights"
    }));
  }
}
;
//# sourceMappingURL=ForbiddenPage.js.map
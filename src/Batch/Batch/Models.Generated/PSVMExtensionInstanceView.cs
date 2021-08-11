﻿// -----------------------------------------------------------------------------
﻿//
﻿// Copyright Microsoft Corporation
﻿// Licensed under the Apache License, Version 2.0 (the "License");
﻿// you may not use this file except in compliance with the License.
﻿// You may obtain a copy of the License at
﻿// http://www.apache.org/licenses/LICENSE-2.0
﻿// Unless required by applicable law or agreed to in writing, software
﻿// distributed under the License is distributed on an "AS IS" BASIS,
﻿// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
﻿// See the License for the specific language governing permissions and
﻿// limitations under the License.
﻿// -----------------------------------------------------------------------------
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:5.0.9
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Microsoft.Azure.Commands.Batch.Models
{
    using System;
    using System.Collections;
    using System.Collections.Generic;
    using Microsoft.Azure.Batch;
    
    
    public partial class PSVMExtensionInstanceView
    {
        
        internal Microsoft.Azure.Batch.VMExtensionInstanceView omObject;
        
        private IList<PSInstanceViewStatus> statuses;
        
        private IList<PSInstanceViewStatus> subStatuses;
        
        public PSVMExtensionInstanceView()
        {
            this.omObject = new Microsoft.Azure.Batch.VMExtensionInstanceView();
        }
        
        internal PSVMExtensionInstanceView(Microsoft.Azure.Batch.VMExtensionInstanceView omObject)
        {
            if ((omObject == null))
            {
                throw new System.ArgumentNullException("omObject");
            }
            this.omObject = omObject;
        }
        
        public string Name
        {
            get
            {
                return this.omObject.Name;
            }
            set
            {
                this.omObject.Name = value;
            }
        }
        
        public IList<PSInstanceViewStatus> Statuses
        {
            get
            {
                if (((this.statuses == null) 
                            && (this.omObject.Statuses != null)))
                {
                    List<PSInstanceViewStatus> list;
                    list = new List<PSInstanceViewStatus>();
                    IEnumerator<Microsoft.Azure.Batch.InstanceViewStatus> enumerator;
                    enumerator = this.omObject.Statuses.GetEnumerator();
                    for (
                    ; enumerator.MoveNext(); 
                    )
                    {
                        list.Add(new PSInstanceViewStatus(enumerator.Current));
                    }
                    this.statuses = list;
                }
                return this.statuses;
            }
            set
            {
                if ((value == null))
                {
                    this.omObject.Statuses = null;
                }
                else
                {
                    this.omObject.Statuses = new List<Microsoft.Azure.Batch.InstanceViewStatus>();
                }
                this.statuses = value;
            }
        }
        
        public IList<PSInstanceViewStatus> SubStatuses
        {
            get
            {
                if (((this.subStatuses == null) 
                            && (this.omObject.SubStatuses != null)))
                {
                    List<PSInstanceViewStatus> list;
                    list = new List<PSInstanceViewStatus>();
                    IEnumerator<Microsoft.Azure.Batch.InstanceViewStatus> enumerator;
                    enumerator = this.omObject.SubStatuses.GetEnumerator();
                    for (
                    ; enumerator.MoveNext(); 
                    )
                    {
                        list.Add(new PSInstanceViewStatus(enumerator.Current));
                    }
                    this.subStatuses = list;
                }
                return this.subStatuses;
            }
            set
            {
                if ((value == null))
                {
                    this.omObject.SubStatuses = null;
                }
                else
                {
                    this.omObject.SubStatuses = new List<Microsoft.Azure.Batch.InstanceViewStatus>();
                }
                this.subStatuses = value;
            }
        }
    }
}

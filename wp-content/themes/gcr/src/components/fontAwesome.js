import { library, dom } from '@fortawesome/fontawesome-svg-core'
import {
  faCheck,
  faUser,
  faEnvelope,
  faPhone,
  faMapMarkerAlt
} from '@fortawesome/free-solid-svg-icons'

library.add(faCheck, faUser, faEnvelope, faPhone, faMapMarkerAlt)

dom.i2svg()

# Vehicle Service Portal - Comprehensive Project Plan
## Enterprise Multi-Platform AI-Powered Service Management System

**Document Version:** 2.0  
**Created:** January 18, 2026  
**Project Type:** Full-Stack Multi-Platform with AI/ML  
**Target Audience:** Automotive Service Industry

---

## 📋 Executive Summary

The Vehicle Service Portal is an enterprise-grade, multi-platform application that connects vehicle owners with service providers through intelligent automation, AI-powered diagnostics, and comprehensive management tools.

### Key Differentiators:
- 🤖 **Advanced AI Chatbot** with voice, vision, and deep reasoning
- 📱 **Dual Mobile Apps** (Customer-focused + Admin-focused)
- 🌐 **Multi-tenant Web Platform** (3 distinct portals)
- 🎨 **Headless CMS** for content management
- 🧠 **ML Platform** for predictive analytics
- 🔐 **Role-based Access** with impersonation capabilities
- ☁️ **Microsoft Azure AI Foundry** powered

### Project Scale:
- **Total Estimated Hours:** 1,435 hours (~9 months with 3-4 developers)
- **Platforms:** Web, iOS, Android
- **Users:** Super Admin, App Admin, Garage Admin, Customers
- **Languages:** Multi-language support
- **Tech Stack:** .NET 9, Angular 19, React Native/Flutter, PostgreSQL, Redis, Azure AI

---

## 🎯 User Roles & Access Control

### Role Hierarchy

```
Super Admin (System Owner)
    ↓
Application Admin (Operations Team)
    ↓
Garage Admin (Service Providers)
    ↓
User/Customer (End Users)
```

### Detailed Role Matrix

| Role | Count | Primary Platform | Web Access | Mobile Access | Impersonation |
|------|-------|-----------------|------------|---------------|---------------|
| **Super Admin** | 1-2 | Web 100% | Full System | None | All Roles |
| **Application Admin** | 3-10 | Web 90%, Mobile 10% | CMS + Management | Notifications | Garage Admin |
| **Garage Admin** | 100s | Web 70%, Mobile 30% | Management Dashboard | Quick Actions | None |
| **User (Customer)** | 1000s+ | Mobile 70%, Web 30% | Basic Portal | Full Features | None |

---

## 🔐 Role Permissions & Capabilities

### 1️⃣ Super Admin

**Access:** Web Portal Only (`/super-admin/*`)

**Core Responsibilities:**
- ✅ System configuration & settings
- ✅ Create/Delete/Manage Application Admins
- ✅ Database backup & restoration
- ✅ System security & audit logs
- ✅ Emergency access to all functions
- ✅ Server configuration & deployment
- ✅ Billing & subscription management
- ✅ Impersonate ANY role (with audit trail)
- ✅ View all system-wide analytics

**Restrictions:**
- Cannot be deleted (must transfer ownership)
- Requires 2FA for all actions
- All actions logged with timestamps

---

### 2️⃣ Application Admin

**Access:** Web Portal (`/admin/*`) + Mobile App (Admin)

**Web Features (90%):**
- ✅ **Content Management System (CMS)**
  - Manage web pages (About, FAQ, Terms, Privacy)
  - Manage mobile app content (splash screens, tutorials)
  - Banner & promotion management
  - Email & notification templates
  - Multi-language content
  - Media library (images, videos, documents)
  - WYSIWYG editor
  - Version control & publish workflow
  - SEO settings

- ✅ **User Management**
  - Create/Edit/Delete Garage Admins
  - Create/Edit/Delete Customers
  - View all user activities
  - User verification & approval
  - Ban/Suspend users
  - Reset passwords
  - Export user data

- ✅ **Garage Management**
  - Approve/Reject garage registrations
  - Impersonate Garage Admin (with audit)
  - Access all garage admin sections
  - View garage performance metrics
  - Set commission rates
  - Manage garage categories
  - Feature/Highlight garages

- ✅ **AI Platform Management**
  - **Model Training Dashboard**
    - Upload & manage training datasets
    - Select ML algorithms
    - Configure hyperparameters
    - Train custom models
    - Evaluate model performance
    - Deploy models to production
    - A/B testing models
    - Model versioning & rollback
  
  - **Chatbot Configuration**
    - Knowledge base management
    - Configure AI responses
    - Set conversation flows
    - Intent & entity mapping
    - Azure AI Foundry settings
    - Voice persona configuration
    - Image analysis rules
    - Deep thinking prompts
    - Response templates
    - Multi-language training
  
  - **AI Analytics**
    - Chatbot usage metrics
    - Model accuracy tracking
    - User feedback analysis
    - Error rate monitoring
    - Cost tracking (API usage)
    - Conversation quality scores
    - Voice recognition accuracy
    - Image analysis success rates

- ✅ **Analytics & Reports**
  - System-wide dashboard
  - Revenue & financial reports
  - User engagement metrics
  - Service completion rates
  - Popular services
  - Geographic analytics
  - Export capabilities (PDF, Excel)

- ✅ **Notifications & Communication**
  - Send push notifications
  - Email campaigns
  - SMS alerts
  - In-app announcements

**Mobile Features (10%):**
- 📱 View critical notifications
- 📱 Approve garage registrations
- 📱 Quick user lookup
- 📱 System health monitoring
- 📱 Emergency alerts

**Cannot:**
- ❌ Modify system configuration
- ❌ Delete Super Admin
- ❌ Access server infrastructure
- ❌ Modify billing settings

---

### 3️⃣ Garage Admin

**Access:** Web Portal (`/garage/*`) + Mobile App (Admin)

**Web Features (70% - Primary Interface):**
- ✅ **Dashboard**
  - Today's appointments
  - Revenue analytics
  - Staff performance
  - Service queue status
  - Customer satisfaction scores
  - Inventory alerts

- ✅ **Service Management**
  - Create/Edit/Delete services
  - Set pricing & duration
  - Service packages
  - Seasonal offers
  - Service categories
  - Required skills/equipment
  - Upload service images

- ✅ **Appointment Management**
  - View all appointments (calendar/list)
  - Accept/Reject bookings
  - Reschedule appointments
  - Assign to mechanics
  - Update service status
  - Add notes & photos
  - Generate invoices

- ✅ **Staff Management**
  - Add/Edit/Remove mechanics
  - Set skills & certifications
  - Assign shifts
  - Track performance
  - Commission settings

- ✅ **Inventory Management**
  - Parts inventory tracking
  - Low stock alerts
  - Supplier management
  - Purchase orders
  - Cost tracking

- ✅ **Customer Management**
  - View customer profiles
  - Service history
  - Vehicle information
  - Communication logs
  - Loyalty programs

- ✅ **Financial Reports**
  - Daily/Weekly/Monthly revenue
  - Service breakdown
  - Staff commissions
  - Expense tracking
  - Tax reports
  - Export to accounting software

- ✅ **Garage Settings**
  - Operating hours
  - Holiday schedule
  - Contact information
  - Photos & description
  - Payment methods
  - Cancellation policy

- ✅ **AI Chatbot Assistant**
  - Technical assistance (text + voice)
  - Parts lookup
  - Diagnostic code interpretation
  - Service recommendations
  - Image-based diagnostics
  - Customer query templates

**Mobile Features (30% - Quick Actions):**
- 📱 View today's appointments
- 📱 Mark service complete
- 📱 Update service status
- 📱 View notifications
- 📱 Chat with customers
- 📱 Quick photo upload
- 📱 Voice memos
- 📱 Emergency alerts
- 📱 AI chatbot access (voice + text)

---

### 4️⃣ User (Customer)

**Access:** Mobile App (Primary) + Web Portal (`/`)

**Mobile Features (70% - Primary Interface):**
- 📱 **Vehicle Management**
  - Add multiple vehicles
  - VIN scanner
  - Upload vehicle photos
  - Set as primary vehicle
  - Maintenance reminders
  - Digital garage

- 📱 **Service Booking**
  - Browse nearby garages (GPS-based)
  - Filter by service type, rating, price
  - View garage photos & reviews
  - Select date & time
  - Choose specific mechanic
  - Add service notes
  - Upload issue photos
  - Real-time availability

- 📱 **Service Tracking**
  - Real-time status updates
  - Push notifications
  - Live location of tow truck
  - ETA updates
  - Chat with garage
  - View service progress photos

- 📱 **AI-Powered Features**
  - **Advanced AI Chatbot**
    - 💬 Text chat interface
    - 🎤 Voice input (speech-to-text)
    - 🔊 Voice output (text-to-speech)
    - 📸 Image analysis (upload vehicle photo)
    - 🧠 Deep thinking mode (complex diagnostics)
    - 💡 Get instant diagnostic suggestions
    - 💰 Estimate service costs
    - 🔍 Find recommended garages
    - 📅 Schedule appointments via chat
    - 🛠️ Troubleshooting guides
    - 🌍 Multi-language support
  
  - **Diagnostic Assistant**
    - Describe symptoms (voice/text/image)
    - AI suggests possible issues
    - Severity assessment
    - Urgency indicator
    - Estimated cost range
    - DIY vs professional recommendation

- 📱 **Payments**
  - In-app payment
  - Multiple payment methods
  - Save cards securely
  - Payment history
  - Split payment
  - Apply coupons/offers
  - Digital receipts

- 📱 **Reviews & Ratings**
  - Rate service quality
  - Rate mechanic
  - Upload photos
  - Read others' reviews
  - Report issues

- 📱 **Service History**
  - Complete timeline
  - Service details
  - Photos & videos
  - Invoices
  - Warranties
  - Share with mechanic

- 📱 **Notifications**
  - Appointment reminders
  - Service updates
  - Promotional offers
  - Maintenance alerts
  - Vehicle recalls

**Web Features (30% - Secondary):**
- 💻 Browse garages
- 💻 Book appointments (basic)
- 💻 View service history
- 💻 Download invoices
- 💻 Manage profile
- 💻 Payment management
- 💻 AI chatbot access (text + voice)
- 💻 View detailed analytics

---

## 🤖 Advanced AI Chatbot Architecture

### Microsoft Azure AI Foundry Integration

**Platform:** Azure AI Foundry (unified AI development platform)

**Core Services:**

#### 1. **Azure OpenAI Service**
- **Models:** GPT-4 Turbo, GPT-4o (multimodal)
- **Features:**
  - Natural language understanding
  - Context-aware responses
  - Multi-turn conversations
  - Reasoning capabilities
  - Code interpretation
- **Use Cases:**
  - General queries
  - Diagnostic reasoning
  - Service recommendations
  - Troubleshooting guides

#### 2. **Azure AI Speech**
- **Speech-to-Text:** Convert voice to text (30+ languages)
- **Text-to-Speech:** Natural voice responses
- **Voice Personas:** Customizable voice characters
- **Features:**
  - Real-time transcription
  - Noise cancellation
  - Speaker identification
  - Custom pronunciation
- **Use Cases:**
  - Hands-free operation
  - Voice commands
  - Audio responses
  - Accessibility

#### 3. **Azure AI Vision**
- **Computer Vision API**
- **Features:**
  - Object detection (vehicle parts)
  - Damage assessment
  - Rust/corrosion detection
  - License plate recognition
  - VIN extraction
  - Image classification
- **Use Cases:**
  - Vehicle damage analysis
  - Parts identification
  - Diagnostic assistance
  - Insurance claims

#### 4. **Azure AI Search**
- **Vector Search:** Semantic search over knowledge base
- **Features:**
  - RAG (Retrieval Augmented Generation)
  - Hybrid search (keyword + semantic)
  - Faceted search
  - Auto-complete
- **Use Cases:**
  - Knowledge base retrieval
  - Service documentation
  - Historical case lookup
  - Parts catalog search

#### 5. **Azure Prompt Flow**
- **Orchestration:** Chain multiple AI services
- **Features:**
  - Visual workflow designer
  - Debugging tools
  - Performance monitoring
  - Version control
- **Use Cases:**
  - Complex diagnostic flows
  - Multi-step reasoning
  - Service recommendation pipeline

#### 6. **Azure Content Safety**
- **Moderation:** Filter inappropriate content
- **Features:**
  - Text moderation
  - Image moderation
  - PII detection
  - Profanity filtering
- **Use Cases:**
  - User input validation
  - Review moderation
  - Chat safety

---

### Chatbot Features by Mode

#### 🗨️ **Text Chat Mode**
- Standard conversational interface
- Quick responses (<3 seconds)
- Context retention (session-based)
- Suggested follow-up questions
- Code snippets for error codes
- Links to relevant documentation
- Emoji support
- Markdown formatting

**Example Interactions:**
```
User: "My check engine light is on"
Bot: "I can help with that! 🚗 Can you tell me:
      1. What's your vehicle make and model?
      2. Are there any other warning signs?
      3. Can you share a photo of the dashboard?"
```

#### 🎤 **Voice Chat Mode**
- Hands-free operation
- Natural conversation flow
- Voice activity detection
- Interrupt support
- Background noise filtering
- Multiple language support
- Voice feedback (beeps, confirmations)
- Transcription display

**Example Interactions:**
```
User: [Voice] "Hey, book me a service for tomorrow"
Bot: [Voice] "Sure! I found 3 garages near you. The earliest 
      available is AutoFix at 10 AM. Shall I book it?"
User: [Voice] "Yes"
Bot: [Voice] "Done! Appointment confirmed for tomorrow at 10 AM"
```

#### 🧠 **Deep Thinking Mode**
- Extended processing time (10-30 seconds)
- Multi-step reasoning
- Diagnostic tree analysis
- Probability-based suggestions
- Explain reasoning process
- Visual decision tree
- Confidence scores

**When Activated:**
- Complex diagnostic queries
- Multiple symptoms
- Contradictory information
- Safety-critical issues
- Cost optimization

**Example Interactions:**
```
User: "Car makes grinding noise when braking, pulls to left"
Bot: [Thinking indicator]
     "I'm analyzing this carefully... considering multiple factors"
     
     [After 15 seconds]
     "Based on deep analysis:
      
      Primary Issue (85% confidence):
      - Worn brake pads on left side
      - Possibly stuck caliper
      
      Secondary Concerns (45% confidence):
      - Wheel bearing issue
      - Brake rotor warping
      
      Reasoning:
      1. Grinding noise indicates metal-on-metal contact
      2. Pulling left suggests uneven brake force
      3. These symptoms together strongly point to brake system
      
      Recommendation:
      - Immediate inspection required (safety issue)
      - Estimated cost: $200-500
      - Time: 1-2 hours
      
      Should I find a nearby garage for you?"
```

#### 📸 **Image Analysis Mode**
- Upload photos (up to 5 at once)
- Real-time processing
- Annotated images with highlights
- Damage severity assessment
- Parts identification
- Before/after comparisons
- Share with garage directly

**Capabilities:**
- Detect visible damage (dents, scratches, rust)
- Identify fluid leaks (by color/location)
- Recognize warning lights
- Read error codes from OBD display
- Assess tire condition
- Check brake pad wear
- Identify engine parts

**Example Interactions:**
```
User: [Uploads photo of engine]
Bot: "Analyzing image..."
     
     [Image returned with annotations]
     
     "I can see:
      ✓ Clean engine bay
      ⚠️ Oil cap appears loose (red circle)
      ⚠️ Belt shows minor cracking (yellow highlight)
      
      Immediate Action:
      - Tighten oil cap to prevent leaks
      
      Plan Ahead:
      - Belt replacement in next 3-6 months
      - Estimated cost: $80-150
      
      Would you like me to schedule a belt inspection?"
```

---

### Chatbot Knowledge Base

**Data Sources:**
1. **Internal Data**
   - Service history database
   - Garage services catalog
   - User feedback & reviews
   - Common issues database
   - Diagnostic rules

2. **External Data**
   - Vehicle manufacturer documentation
   - OBD error code database
   - Parts compatibility data
   - Technical service bulletins
   - Recall information

3. **Trained Models**
   - Cost prediction model
   - Issue classification model
   - Garage recommendation model
   - Urgency assessment model

**Update Frequency:**
- Real-time: User data, appointments
- Daily: Garage availability, pricing
- Weekly: Knowledge base updates
- Monthly: Model retraining

---

### Chatbot Integration Points

**Available On:**
- ✅ Mobile App (User) - All modes
- ✅ Mobile App (Garage Admin) - Text + Voice + Image
- ✅ Web Portal (User) - Text + Voice + Image
- ✅ Web Portal (Garage Admin) - Text + Voice + Image
- ✅ Web Portal (Application Admin) - Configuration only

**Access Patterns:**
- **Floating Button:** Always accessible
- **Dedicated Tab:** Full conversation history
- **Quick Actions:** Pre-defined queries
- **Proactive:** System-initiated suggestions

---

## 🎨 Content Management System (CMS)

### Architecture

**Type:** Headless CMS  
**Admin Access:** Application Admin only  
**Location:** `/admin/cms/*`

### Content Types

#### 1. **Web Pages**
- Home page sections
- About Us
- FAQ
- Terms & Conditions
- Privacy Policy
- Contact page
- Blog posts
- Landing pages

#### 2. **Mobile App Content**
- Onboarding screens
- Tutorial slides
- Feature announcements
- App store descriptions
- Release notes
- Help center articles

#### 3. **Media Library**
- Images (banners, icons, photos)
- Videos (tutorials, demos)
- Documents (PDFs, guides)
- Audio files (notifications)

#### 4. **Promotional Content**
- Homepage banners
- Popup announcements
- Email templates
- Push notification templates
- SMS templates
- In-app messages

#### 5. **Localization**
- Multi-language strings
- Regional content
- Date/time formats
- Currency formats

### CMS Features

**Content Editor:**
- WYSIWYG editor (TinyMCE / Draft.js)
- Markdown support
- Code editor (HTML/CSS)
- Media picker
- Link manager
- SEO fields (meta tags, descriptions)
- Preview mode (desktop/mobile)

**Workflow:**
- Draft → Review → Publish
- Scheduled publishing
- Version history
- Rollback capability
- Change tracking
- Approval system

**Multi-language:**
- Create translations
- Language switcher
- Fallback to default language
- Regional content variations

**Access Control:**
- Role-based permissions
- Content locking (editing)
- Audit logs

---

## 🗄️ Database Schema Updates

### New Tables Required

#### AI & ML Tables

**1. `ml_models`**
```sql
CREATE TABLE ml_models (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL, -- diagnostic, cost_prediction, recommendation
    version VARCHAR(20) NOT NULL,
    algorithm VARCHAR(50),
    parameters JSONB,
    training_date TIMESTAMP,
    accuracy DECIMAL(5,4),
    status VARCHAR(20), -- training, deployed, archived
    model_file_path VARCHAR(500),
    created_by UUID REFERENCES users(id),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**2. `ml_training_datasets`**
```sql
CREATE TABLE ml_training_datasets (
    id UUID PRIMARY KEY,
    model_id UUID REFERENCES ml_models(id),
    name VARCHAR(100),
    file_path VARCHAR(500),
    record_count INTEGER,
    features JSONB,
    uploaded_by UUID REFERENCES users(id),
    uploaded_at TIMESTAMP DEFAULT NOW()
);
```

**3. `chatbot_conversations`**
```sql
CREATE TABLE chatbot_conversations (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id),
    session_id UUID NOT NULL,
    mode VARCHAR(20), -- text, voice, deep_thinking, image
    started_at TIMESTAMP DEFAULT NOW(),
    ended_at TIMESTAMP,
    message_count INTEGER DEFAULT 0,
    satisfaction_rating INTEGER CHECK (satisfaction_rating BETWEEN 1 AND 5),
    resolved BOOLEAN DEFAULT FALSE
);
```

**4. `chatbot_messages`**
```sql
CREATE TABLE chatbot_messages (
    id UUID PRIMARY KEY,
    conversation_id UUID REFERENCES chatbot_conversations(id),
    sender VARCHAR(10), -- user, bot
    content TEXT,
    mode VARCHAR(20), -- text, voice, image
    audio_file_path VARCHAR(500),
    image_file_path VARCHAR(500),
    intent VARCHAR(100),
    confidence DECIMAL(5,4),
    processing_time_ms INTEGER,
    tokens_used INTEGER,
    cost_usd DECIMAL(10,6),
    created_at TIMESTAMP DEFAULT NOW()
);
```

**5. `chatbot_knowledge_base`**
```sql
CREATE TABLE chatbot_knowledge_base (
    id UUID PRIMARY KEY,
    category VARCHAR(50), -- diagnostic, service, general
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    keywords TEXT[],
    language VARCHAR(10) DEFAULT 'en',
    usage_count INTEGER DEFAULT 0,
    effectiveness_score DECIMAL(3,2),
    created_by UUID REFERENCES users(id),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**6. `ai_image_analyses`**
```sql
CREATE TABLE ai_image_analyses (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id),
    conversation_id UUID REFERENCES chatbot_conversations(id),
    image_path VARCHAR(500),
    analysis_type VARCHAR(50), -- damage, diagnostic, part_id
    detected_objects JSONB,
    severity VARCHAR(20), -- low, medium, high, critical
    confidence_scores JSONB,
    recommendations TEXT,
    processing_time_ms INTEGER,
    cost_usd DECIMAL(10,6),
    created_at TIMESTAMP DEFAULT NOW()
);
```

#### CMS Tables

**7. `cms_pages`**
```sql
CREATE TABLE cms_pages (
    id UUID PRIMARY KEY,
    slug VARCHAR(200) UNIQUE NOT NULL,
    title VARCHAR(200) NOT NULL,
    content TEXT,
    excerpt TEXT,
    meta_title VARCHAR(200),
    meta_description TEXT,
    language VARCHAR(10) DEFAULT 'en',
    status VARCHAR(20), -- draft, review, published
    published_at TIMESTAMP,
    author_id UUID REFERENCES users(id),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**8. `cms_media`**
```sql
CREATE TABLE cms_media (
    id UUID PRIMARY KEY,
    filename VARCHAR(200),
    file_path VARCHAR(500),
    file_type VARCHAR(50), -- image, video, document, audio
    mime_type VARCHAR(100),
    size_bytes BIGINT,
    alt_text VARCHAR(200),
    caption TEXT,
    uploaded_by UUID REFERENCES users(id),
    uploaded_at TIMESTAMP DEFAULT NOW()
);
```

**9. `cms_banners`**
```sql
CREATE TABLE cms_banners (
    id UUID PRIMARY KEY,
    title VARCHAR(200),
    subtitle TEXT,
    image_id UUID REFERENCES cms_media(id),
    link_url VARCHAR(500),
    target VARCHAR(20), -- web, mobile, both
    position INTEGER DEFAULT 0,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    active BOOLEAN DEFAULT TRUE,
    click_count INTEGER DEFAULT 0,
    created_by UUID REFERENCES users(id),
    created_at TIMESTAMP DEFAULT NOW()
);
```

**10. `cms_notifications_templates`**
```sql
CREATE TABLE cms_notification_templates (
    id UUID PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50), -- push, email, sms, in_app
    subject VARCHAR(200),
    body TEXT,
    variables JSONB, -- {user_name}, {service_name}, etc.
    language VARCHAR(10) DEFAULT 'en',
    active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

#### Permission & Audit Tables

**11. `roles`**
```sql
CREATE TABLE roles (
    id UUID PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL, -- super_admin, app_admin, garage_admin, user
    description TEXT,
    level INTEGER NOT NULL, -- 1 (super) to 4 (user)
    created_at TIMESTAMP DEFAULT NOW()
);
```

**12. `permissions`**
```sql
CREATE TABLE permissions (
    id UUID PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    resource VARCHAR(50), -- users, garages, cms, ai_models, etc.
    action VARCHAR(20), -- create, read, update, delete, execute
    description TEXT
);
```

**13. `role_permissions`**
```sql
CREATE TABLE role_permissions (
    role_id UUID REFERENCES roles(id),
    permission_id UUID REFERENCES permissions(id),
    PRIMARY KEY (role_id, permission_id)
);
```

**14. `user_roles`**
```sql
CREATE TABLE user_roles (
    user_id UUID REFERENCES users(id),
    role_id UUID REFERENCES roles(id),
    assigned_by UUID REFERENCES users(id),
    assigned_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY (user_id, role_id)
);
```

**15. `impersonation_logs`**
```sql
CREATE TABLE impersonation_logs (
    id UUID PRIMARY KEY,
    admin_id UUID REFERENCES users(id),
    target_user_id UUID REFERENCES users(id),
    reason TEXT,
    started_at TIMESTAMP DEFAULT NOW(),
    ended_at TIMESTAMP,
    actions_performed JSONB
);
```

**16. `audit_logs`**
```sql
CREATE TABLE audit_logs (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id),
    action VARCHAR(100), -- login, create, update, delete, etc.
    resource VARCHAR(50), -- user, garage, service, etc.
    resource_id UUID,
    changes JSONB, -- before/after values
    ip_address VARCHAR(45),
    user_agent TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);
```

**17. `ai_usage_logs`**
```sql
CREATE TABLE ai_usage_logs (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id),
    service VARCHAR(50), -- openai, speech, vision
    operation VARCHAR(50), -- chat, transcribe, analyze
    tokens_used INTEGER,
    cost_usd DECIMAL(10,6),
    response_time_ms INTEGER,
    created_at TIMESTAMP DEFAULT NOW()
);
```

---

## 🏗️ Updated Architecture

### System Components

```
┌─────────────────────────────────────────────────────────────────┐
│                      PRESENTATION LAYER                         │
├─────────────────────────────────────────────────────────────────┤
│  Web Portal (Angular 19)           Mobile Apps (React Native)   │
│  ├─ Super Admin Portal              ├─ Customer App             │
│  ├─ Application Admin Portal        └─ Admin App                │
│  ├─ Garage Admin Portal                                         │
│  └─ Customer Portal                                             │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                      API GATEWAY / BFF                          │
│  (Backend for Frontend - .NET 9 Minimal APIs)                  │
│  ├─ Authentication & Authorization (Keycloak)                   │
│  ├─ Rate Limiting & Throttling                                 │
│  ├─ Request Routing                                            │
│  └─ Response Caching                                           │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                      APPLICATION LAYER                          │
│  (CQRS + MediatR + FluentValidation)                          │
├─────────────────────────────────────────────────────────────────┤
│  Business Logic Services                                        │
│  ├─ User Management Service                                    │
│  ├─ Garage Management Service                                  │
│  ├─ Booking Service                                            │
│  ├─ CMS Service                                                │
│  ├─ ML Model Service                                           │
│  └─ Chatbot Orchestration Service                             │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                    INFRASTRUCTURE LAYER                         │
├─────────────────────────────────────────────────────────────────┤
│  Data Access                    External Services               │
│  ├─ Repository Pattern           ├─ Azure AI Foundry           │
│  ├─ Unit of Work                │   ├─ OpenAI Service          │
│  └─ Entity Framework Core       │   ├─ Speech Service          │
│                                  │   ├─ Vision Service          │
│  Caching                        │   ├─ AI Search              │
│  ├─ Redis (Distributed)         │   └─ Content Safety          │
│  └─ In-Memory (Local)           │                              │
│                                  ├─ Payment Gateway            │
│  Storage                        ├─ SMS Service                │
│  ├─ PostgreSQL (Primary)        ├─ Email Service (SendGrid)    │
│  ├─ Azure Blob (Media)          └─ Push Notifications (FCM)    │
│  └─ Blob (ML Models)                                           │
│                                                                 │
│  Background Jobs                                               │
│  ├─ Hangfire (Scheduling)                                      │
│  └─ Model Training Queue                                       │
└─────────────────────────────────────────────────────────────────┘
```

---

## 📱 Mobile Apps Architecture

### Customer App

**Platform:** React Native (iOS + Android)

**Key Screens:**
1. Splash & Onboarding
2. Login/Registration
3. Home/Dashboard
4. Vehicle Management
5. Garage Discovery (Map + List)
6. Service Booking
7. Service Tracking
8. AI Chatbot (Full-screen + Floating)
9. Service History
10. Payments
11. Profile & Settings
12. Notifications

**Native Features:**
- Camera (QR, Photos, Video)
- GPS/Location Services
- Push Notifications
- Biometric Authentication
- Audio Recording (Voice chat)
- File Upload
- Background Services (Tracking)
- Deep Linking
- Share functionality

**Offline Capabilities:**
- View service history
- View profile
- View cached garage info
- Queue actions for sync

---

### Admin App (Garage Admin)

**Platform:** React Native (iOS + Android)

**Key Screens:**
1. Login
2. Dashboard (Today's Overview)
3. Appointments List
4. Appointment Detail & Actions
5. Customer Communication
6. Quick Status Updates
7. Photo Upload
8. AI Chatbot Assistant
9. Notifications
10. Settings

**Distribution:**
- TestFlight (iOS)
- Internal Testing (Android)
- Enterprise distribution (optional)

---

## 💻 Technology Stack (Complete)

### Backend
| Component | Technology | Version | Purpose |
|-----------|-----------|---------|---------|
| **Framework** | .NET Core | 9.0 | Core backend framework |
| **Architecture** | Clean Architecture | - | Code organization |
| **Pattern** | CQRS + MediatR | - | Command/Query separation |
| **ORM** | Entity Framework Core | 10.0 | Database access |
| **Database** | PostgreSQL | 16 | Primary data store |
| **Caching** | Redis | 7 | Distributed cache |
| **Schema Migration** | Liquibase | Latest | Version control for DB |
| **Validation** | FluentValidation | Latest | Request validation |
| **Mapping** | AutoMapper | Latest | DTO mapping |
| **Logging** | Serilog | Latest | Structured logging |
| **Job Scheduling** | Hangfire | Latest | Background jobs |
| **Authentication** | Keycloak | Latest | SSO & Identity |
| **Resilience** | Polly | 8.4.1 | Retry, circuit breaker, timeout |
| **HTTP Resilience** | Polly.Extensions.Http | 3.0.0 | HTTP policy handling |
| **Image Processing** | SkiaSharp | 2.88.8 | Image manipulation |

### Frontend (Web)
| Component | Technology | Version | Purpose |
|-----------|-----------|---------|---------|
| **Framework** | Angular | 19 | Web application |
| **UI Library** | Tailwind CSS | Latest | Styling |
| **Components** | Shadcn-inspired | Custom | UI components |
| **Charts** | ngx-echarts | 19 | Data visualization |
| **State Management** | RxJS | Latest | Reactive state |
| **HTTP Client** | Angular HttpClient | 19 | API communication |
| **Forms** | Reactive Forms | 19 | Form handling |
| **Rich Text Editor** | TinyMCE | Latest | CMS content editing |

### Mobile
| Component | Technology | Version | Purpose |
|-----------|-----------|---------|---------|
| **Framework** | React Native | 0.73+ | Mobile apps |
| **Navigation** | React Navigation | 6.x | Screen navigation |
| **State** | Redux Toolkit | Latest | State management |
| **UI Kit** | React Native Paper | Latest | Material Design |
| **Maps** | react-native-maps | Latest | Location services |
| **Camera** | react-native-camera | Latest | Photo/Video |
| **Push** | @react-native-firebase | Latest | Notifications |
| **Voice** | react-native-voice | Latest | Speech recognition |

### AI & ML
| Component | Technology | Purpose |
|-----------|-----------|---------|
| **AI Platform** | Azure AI Foundry | Unified AI development |
| **LLM** | Azure OpenAI (GPT-4 Turbo) | Chatbot intelligence |
| **Speech** | Azure AI Speech | Voice input/output |
| **Vision** | Azure AI Vision | Image analysis |
| **Search** | Azure AI Search | Knowledge base RAG |
| **Orchestration** | Azure Prompt Flow | Multi-service workflows |
| **Safety** | Azure Content Safety | Content moderation |
| **ML Framework** | ML.NET | Custom model training |
| **Vector DB** | PostgreSQL pgvector | Embedding storage |

### Infrastructure
| Component | Technology | Purpose |
|-----------|-----------|---------|
| **Containerization** | Docker | Development & deployment |
| **Orchestration** | Kubernetes (optional) | Production scaling |
| **Cloud** | Azure | Primary cloud provider |
| **CI/CD** | GitHub Actions | Automated deployment |
| **Monitoring** | Azure Application Insights | Performance monitoring |
| **Storage** | Azure Blob Storage | Media & file storage |

---

## 📊 Updated Implementation Phases

### Phase 1: Environment & Prerequisites ✅ COMPLETE
**Status:** Completed January 11, 2026  
**Duration:** 5 hours  
**Team:** 1 developer

- ✅ .NET Core 9 SDK
- ✅ Node.js & npm
- ✅ PostgreSQL 16 (Docker)
- ✅ Keycloak (Docker)
- ✅ Redis (Docker)
- ✅ Docker Desktop

---

### Phase 2: Project Structure & Configuration ✅ COMPLETE
**Status:** Completed January 11, 2026  
**Duration:** 8 hours  
**Team:** 1 developer

- ✅ Backend solution structure
- ✅ Angular application
- ✅ Tailwind CSS setup
- ✅ UI components
- ✅ Basic configuration

---

### Phase 3: Database Design & Liquibase ✅ COMPLETE
**Status:** Completed January 11, 2026  
**Duration:** 15 hours  
**Team:** 1 developer

- ✅ 8 core tables
- ✅ Liquibase setup
- ✅ 3,400+ seed records
- ✅ Indexes & constraints

---

### Phase 4: Backend API Development 🔄 IN PROGRESS
**Status:** 57% Complete  
**Started:** January 18, 2026  
**Duration:** 55 hours (of 100 estimated)  
**Team:** 2 developers

**Completed:**
- ✅ Abstractions layer (24 DTOs)
- ✅ AutoMapper configuration
- ✅ Repository + Unit of Work
- ✅ Serilog structured logging
- ✅ Keycloak authentication
- ✅ Error code management (JSON + Redis)
- ✅ Image service (SkiaSharp - zero vulnerabilities)

**Remaining:**
- ⏳ User CRUD endpoints
- ⏳ Garage CRUD endpoints
- ⏳ Service CRUD endpoints
- ⏳ Booking endpoints
- ⏳ JWT middleware
- ⏳ Soft-delete filtering
- ⏳ Pagination

---

### Phase 5: Role-Based Access & Permissions (NEW)
**Status:** Not Started  
**Duration:** 60 hours  
**Team:** 2 developers

**Tasks:**
1. **Role Management (20h)**
   - Create roles table & seed data
   - Implement role hierarchy
   - Role assignment API
   - Role-based authorization policies

2. **Permission System (25h)**
   - Permissions table & seed data
   - Role-permission mapping
   - Custom authorization attributes
   - Permission checking middleware
   - API endpoint protection

3. **Impersonation (15h)**
   - Impersonation token generation
   - Audit logging
   - Session management
   - Switch user UI
   - Security validations

**Deliverables:**
- 4 roles defined (Super Admin, App Admin, Garage Admin, User)
- 50+ permissions mapped
- Impersonation feature with audit trail
- Protected API endpoints

---

### Phase 6: Content Management System (NEW)
**Status:** Not Started  
**Duration:** 100 hours  
**Team:** 2 developers

**Tasks:**
1. **Database Schema (15h)**
   - CMS tables (pages, media, banners, templates)
   - Create Liquibase migrations
   - Seed initial content

2. **Backend API (35h)**
   - Page CRUD endpoints
   - Media upload & management
   - Banner management
   - Template management
   - Localization support
   - Version control
   - Publish workflow

3. **Admin UI (50h)**
   - CMS dashboard
   - WYSIWYG editor integration
   - Media library browser
   - Banner designer
   - Template editor
   - Preview functionality
   - Multi-language switcher
   - Approval workflow UI

**Deliverables:**
- Headless CMS backend
- Admin portal for content management
- Media library (image/video/document)
- Multi-language support
- SEO management

---

### Phase 7: AI Platform & Chatbot (NEW)
**Status:** Not Started  
**Duration:** 200 hours  
**Team:** 3 developers (2 backend, 1 AI specialist)

**Tasks:**
1. **Azure AI Foundry Setup (20h)**
   - Azure subscription & resources
   - OpenAI Service deployment
   - Speech Service setup
   - Vision Service setup
   - AI Search configuration
   - Prompt Flow workspace
   - Content Safety setup

2. **ML Model Training Platform (50h)**
   - Database schema for ML models
   - Dataset upload & management
   - Model training API
   - Hyperparameter tuning
   - Model evaluation
   - Model deployment
   - A/B testing framework
   - Analytics dashboard

3. **Chatbot Backend (60h)**
   - Conversation management
   - Azure OpenAI integration
   - Context management
   - Intent recognition
   - Entity extraction
   - Knowledge base RAG
   - Response generation
   - Audio processing (Speech-to-Text/Text-to-Speech)
   - Image analysis integration
   - Deep thinking mode
   - Cost tracking
   - Rate limiting

4. **Chatbot Frontend (50h)**
   - Chat UI component (Web)
   - Chat UI component (Mobile)
   - Voice input button & recording
   - Audio playback
   - Image upload & preview
   - Thinking indicator
   - Typing animation
   - Suggested responses
   - Conversation history
   - Settings panel

5. **Knowledge Base Management (20h)**
   - Knowledge base UI
   - Q&A management
   - Training data curation
   - Effectiveness tracking

**Deliverables:**
- ML model training dashboard
- Advanced AI chatbot (text + voice + image)
- Deep thinking capability
- Knowledge base CMS
- Azure AI Foundry integration
- Cost monitoring dashboard

---

### Phase 8: Mobile App - Customer (NEW)
**Status:** Not Started  
**Duration:** 180 hours  
**Team:** 2 mobile developers

**Tasks:**
1. **Project Setup (20h)**
   - React Native initialization
   - Navigation structure
   - State management (Redux)
   - API client setup
   - Environment configuration

2. **Authentication (25h)**
   - Login/Registration screens
   - Keycloak integration
   - Biometric authentication
   - Token management
   - Session handling

3. **Core Features (80h)**
   - Home/Dashboard
   - Vehicle management
   - Garage discovery (map + list)
   - Service booking flow
   - Real-time service tracking
   - Service history
   - Payment integration
   - Push notifications

4. **AI Chatbot (30h)**
   - Chat interface
   - Voice input/output
   - Image upload
   - Deep thinking UI
   - Context management

5. **Additional Features (25h)**
   - Profile management
   - Settings
   - Notifications center
   - Reviews & ratings
   - Help & support

**Deliverables:**
- iOS app (TestFlight)
- Android app (Internal Testing)
- Push notifications
- GPS integration
- Camera integration
- Offline support

---

### Phase 9: Mobile App - Admin (NEW)
**Status:** Not Started  
**Duration:** 100 hours  
**Team:** 2 mobile developers

**Tasks:**
1. **Project Setup (15h)**
   - React Native initialization
   - Shared components from Customer app
   - Admin-specific navigation

2. **Core Features (60h)**
   - Dashboard
   - Appointment management
   - Customer communication
   - Status updates
   - Photo upload
   - AI chatbot assistant

3. **Notifications & Real-time (25h)**
   - Push notifications
   - Real-time updates
   - Background sync

**Deliverables:**
- iOS admin app
- Android admin app
- Enterprise distribution
- Limited feature set (30% of web)

---

### Phase 10: Web Portals (NEW)
**Status:** Not Started  
**Duration:** 220 hours  
**Team:** 3 frontend developers

**Tasks:**
1. **Super Admin Portal (30h)**
   - Dashboard
   - System configuration
   - Admin user management
   - Audit logs
   - Impersonation UI

2. **Application Admin Portal (80h)**
   - CMS dashboard
   - User management
   - Garage approval workflow
   - AI platform management
   - Analytics & reports
   - Notification management

3. **Garage Admin Portal (70h)**
   - Dashboard
   - Service management
   - Appointment calendar
   - Staff management
   - Financial reports
   - AI chatbot
   - Settings

4. **Customer Portal (40h)**
   - Home page
   - Garage discovery
   - Booking interface
   - Service history
   - Profile management
   - AI chatbot

**Deliverables:**
- 4 web portals with distinct UIs
- Role-based routing
- Responsive design
- AI chatbot integration

---

### Phase 11: Integration & Testing (NEW)
**Status:** Not Started  
**Duration:** 120 hours  
**Team:** 4 developers + QA

**Tasks:**
- End-to-end integration testing
- Mobile app testing (iOS + Android)
- Web portal testing (all browsers)
- AI chatbot accuracy testing
- Performance testing
- Security testing
- User acceptance testing

---

### Phase 12: Deployment & DevOps (NEW)
**Status:** Not Started  
**Duration:** 60 hours  
**Team:** 2 DevOps engineers

**Tasks:**
- Azure infrastructure setup
- CI/CD pipelines
- Kubernetes configuration
- Monitoring & alerting
- Backup strategies
- App store submission

---

## ⏱️ Timeline & Resource Allocation

### Summary

| Phase | Duration | Status | Team Size |
|-------|----------|--------|-----------|
| 1-3: Foundation | 28h | ✅ Complete | 1 dev |
| 4: Backend API | 100h | 🔄 57% (55h done) | 2 devs |
| 5: Roles & Permissions | 60h | ⏳ Pending | 2 devs |
| 6: CMS | 100h | ⏳ Pending | 2 devs |
| 7: AI Platform | 200h | ⏳ Pending | 3 devs |
| 8: Customer App | 180h | ⏳ Pending | 2 devs |
| 9: Admin App | 100h | ⏳ Pending | 2 devs |
| 10: Web Portals | 220h | ⏳ Pending | 3 devs |
| 11: Integration | 120h | ⏳ Pending | 4 devs |
| 12: Deployment | 60h | ⏳ Pending | 2 devs |
| **Total** | **1,168h** | **7% Complete** | **Peak: 4 devs** |

### Realistic Timeline (Parallel Development)

**Assumptions:**
- 4 developers (2 backend, 2 frontend/mobile)
- 40 hours/week per developer
- 160 total hours/week capacity
- 20% buffer for unknowns

**Schedule:**

| Month | Phases | Hours | Team |
|-------|--------|-------|------|
| **Month 1** | Phase 4 (remaining) | 45h | 2 backend |
| **Month 2** | Phase 5 (Roles) | 60h | 2 backend |
| **Month 3** | Phase 6 (CMS) | 100h | 2 backend |
| **Month 4-5** | Phase 7 (AI Platform) | 200h | 3 devs (2 backend + 1 AI) |
| **Month 6-7** | Phase 8 (Customer App) | 180h | 2 mobile |
| | Phase 10 (Web Portals - parallel) | 110h | 2 frontend |
| **Month 8** | Phase 9 (Admin App) | 100h | 2 mobile |
| | Phase 10 (Web Portals - remaining) | 110h | 2 frontend |
| **Month 9** | Phase 11 (Integration) | 120h | 4 devs + QA |
| **Month 10** | Phase 12 (Deployment) | 60h | 2 DevOps |
| | Buffer & Polish | 80h | Full team |

**Total Duration:** ~10 months

**Team Composition:**
- 2 Backend Developers (.NET/C#)
- 2 Mobile Developers (React Native)
- 1 AI/ML Specialist (Azure AI, Python)
- 1 DevOps Engineer (Azure, CI/CD)
- 1 QA Engineer (Testing)
- 1 Project Manager

---

## 💰 Cost Estimation

### Development Costs (Approximate)

| Resource | Rate/Hour | Hours | Total |
|----------|-----------|-------|-------|
| Backend Developers (2) | $80 | 600 | $48,000 |
| Mobile Developers (2) | $75 | 280 | $21,000 |
| AI Specialist (1) | $100 | 150 | $15,000 |
| Frontend Developers (2) | $70 | 220 | $15,400 |
| DevOps Engineer (1) | $90 | 60 | $5,400 |
| QA Engineer (1) | $60 | 120 | $7,200 |
| Project Manager (1) | $85 | 200 | $17,000 |
| **Subtotal** | | **1,630** | **$129,000** |
| Buffer (20%) | | | $25,800 |
| **Total Development** | | | **$154,800** |

### Infrastructure Costs (Monthly)

| Service | Monthly Cost | Annual |
|---------|--------------|--------|
| Azure OpenAI (GPT-4 Turbo) | $500 | $6,000 |
| Azure AI Speech | $150 | $1,800 |
| Azure AI Vision | $100 | $1,200 |
| Azure AI Search | $200 | $2,400 |
| Azure App Service (Web) | $100 | $1,200 |
| Azure PostgreSQL | $150 | $1,800 |
| Azure Redis Cache | $50 | $600 |
| Azure Blob Storage | $30 | $360 |
| Azure Container Registry | $20 | $240 |
| Application Insights | $50 | $600 |
| SendGrid (Email) | $30 | $360 |
| Twilio (SMS) | $50 | $600 |
| Firebase (Push) | $20 | $240 |
| **Total Infrastructure** | **$1,450/mo** | **$17,400/year** |

### One-Time Costs

| Item | Cost |
|------|------|
| Apple Developer Account | $99/year |
| Google Play Developer | $25 (one-time) |
| Domain & SSL | $50/year |
| Design Assets | $1,000 |
| **Total One-Time** | **$1,174** |

### Total First Year Cost
- Development: $154,800
- Infrastructure (12 months): $17,400
- One-time: $1,174
- **Grand Total: $173,374**

---

## 🎯 Success Metrics

### User Acquisition
- 10,000 registered users (first 6 months)
- 500 garages onboarded (first 6 months)
- 50% mobile app adoption rate

### Engagement
- 5,000 AI chatbot conversations/month
- 70% chatbot satisfaction rate
- 2,000 bookings/month
- 4.5+ star average rating

### Technical
- 99.5% uptime
- <500ms API response time
- <2 second page load time
- Zero critical security vulnerabilities

### Financial
- Break even at 18 months
- $50 average revenue per booking
- 15% commission rate from garages

---

## 🚀 Next Steps

1. **Immediate (Week 1-2):**
   - [ ] Review and approve comprehensive plan
   - [ ] Finalize team composition
   - [ ] Set up Azure AI Foundry account
   - [ ] Create project board & milestones

2. **Short Term (Month 1):**
   - [ ] Complete Phase 4 (Backend API)
   - [ ] Begin Phase 5 (Roles & Permissions)
   - [ ] Set up CI/CD pipelines

3. **Medium Term (Month 2-4):**
   - [ ] Complete CMS implementation
   - [ ] Begin AI platform development
   - [ ] Start mobile app development

4. **Long Term (Month 5-10):**
   - [ ] Complete all development phases
   - [ ] Comprehensive testing
   - [ ] Beta launch
   - [ ] Production deployment

---

## 📞 Stakeholder Approval Required

**This plan requires approval for:**
- [ ] Expanded scope (CMS, AI, Mobile Apps)
- [ ] Extended timeline (10 months vs original 6 months)
- [ ] Additional budget ($173K vs original estimate)
- [ ] Team expansion (7 people vs 3 people)
- [ ] Azure AI Foundry costs ($1,450/month)

**Approved By:**
- [ ] Product Owner: ________________
- [ ] Technical Lead: ________________
- [ ] Finance: ________________
- [ ] Date: ________________

---

**Document Owner:** AI Development Team  
**Last Updated:** January 18, 2026  
**Next Review:** February 1, 2026

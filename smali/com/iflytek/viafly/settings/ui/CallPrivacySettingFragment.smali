.class public Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "CallPrivacySettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;,
        Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;
    }
.end annotation


# static fields
.field public static final JSON_PARAM_NAME:Ljava/lang/String; = "name"

.field public static final JSON_PARAM_NUMBER:Ljava/lang/String; = "number"

.field public static final JSON_PARAM_SORTKEY:Ljava/lang/String; = "sortKey"

.field private static final MAX_AUDITION_TIME:I = 0x1f40

.field private static final MSG_STOP_AUDITION:I = 0x1

.field private static final MSG_UPDATE_AUDITION:I


# instance fields
.field private final ADD_CONTACT_RESULT_CODE:I

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

.field private mAnotherAudtionStarted:Z

.field private mAudtionCount:I

.field private mBroadcastPrivacyAdd:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

.field mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

.field private mContext:Landroid/content/Context;

.field private mFirstTimeAudition:Z

.field private mHandler:Landroid/os/Handler;

.field final mITtsListener:Lju;

.field private mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mPlayingIndex:I

.field private mPlayingItemView:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

.field private mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mSelectedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeechService:Lpp;

.field private mSynchronizedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->TAG:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->ADD_CONTACT_RESULT_CODE:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .line 76
    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mFirstTimeAudition:Z

    .line 78
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    .line 80
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAnotherAudtionStarted:Z

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSynchronizedObject:Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem$a;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem$a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

    .line 97
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    .line 587
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mITtsListener:Lju;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mFirstTimeAudition:Z

    return v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    return p1
.end method

.method static synthetic access$110(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSynchronizedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAnotherAudtionStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAnotherAudtionStarted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addChildren()V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected getPlayContent(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 701
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 702
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "numberString":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "locationString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    :cond_0
    return-object v1
.end method

.method protected hideAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V
    .locals 2
    .param p1, "contactNameView"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    invoke-static {p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;->access$600(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_0
    return-void
.end method

.method protected isFirstTimeAudition()Z
    .locals 3

    .prologue
    .line 572
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PRIVACY_AUDTION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected jsonToList(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p1, :cond_2

    .line 303
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 305
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 306
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 307
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 308
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 309
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 312
    :try_start_1
    new-instance v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 313
    .local v1, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v5, "number"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v5, "sortKey"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->e(Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    .end local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    .end local v0    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "len":I
    :cond_2
    :goto_2
    return-void

    .line 324
    :catch_0
    move-exception v5

    goto :goto_2

    .line 317
    .restart local v0    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "len":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method protected listToJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 279
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 280
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 282
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 283
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string/jumbo v5, "number"

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string/jumbo v5, "sortKey"

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "len":I
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 289
    .restart local v0    # "i":I
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "len":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 335
    :pswitch_0
    if-eqz p3, :cond_0

    .line 337
    :try_start_0
    const-string/jumbo v1, "selectedName"

    .line 338
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 339
    .local v0, "tmpDataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v0, :cond_0

    .line 340
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->updateList()V

    .line 343
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->savePrivacyContact()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v0    # "tmpDataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 124
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 125
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 129
    .local v0, "a":I
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v7, v0, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 137
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->addChildren()V

    .line 139
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->addContentView(Landroid/view/View;)V

    .line 140
    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, -0x1

    .line 641
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mFirstTimeAudition:Z

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->updateFirstTimeAudition()V

    .line 643
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSynchronizedObject:Ljava/lang/Object;

    monitor-enter v1

    .line 647
    :try_start_0
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    if-ne v2, v0, :cond_2

    .line 648
    invoke-virtual {p0, p2, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->startAudition(Landroid/view/View;I)V

    .line 661
    :cond_1
    :goto_0
    monitor-exit v1

    .line 662
    return-void

    .line 650
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    if-eq v0, p3, :cond_3

    .line 651
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_1

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAnotherAudtionStarted:Z

    .line 653
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->stopAudition(Landroid/view/View;)V

    .line 654
    invoke-virtual {p0, p2, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->startAudition(Landroid/view/View;I)V

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 657
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->stopAudition(Landroid/view/View;)V

    .line 658
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onStop()V

    .line 211
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 145
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    const v2, 0x7f0c0049

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 149
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->setTitleStyle(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->setBackBtnResource(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->isFirstTimeAudition()Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mFirstTimeAudition:Z

    .line 168
    new-instance v2, Lpp;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->readPrivacyContact()V

    .line 170
    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    .line 172
    const v2, 0x7f0b0497

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyAdd:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 174
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyAdd:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v2, 0x7f0b0496

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 187
    const v2, 0x7f0b0495

    .line 188
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XListView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    .line 189
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->updateList()V

    .line 193
    return-void
.end method

.method protected readPrivacyContact()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    .line 259
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOTIFY_CALL_PRIVACY_CONTACT"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->jsonToList(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method protected savePrivacyContact()V
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method protected setAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V
    .locals 2
    .param p1, "contactNameView"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-static {p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;->access$600(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_0
    return-void
.end method

.method protected showListTip()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 231
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startAudition(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 683
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    .line 684
    iput p2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    move-object v0, p1

    .line 685
    check-cast v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .line 686
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mContext:Landroid/content/Context;

    .line 688
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->getPlayContent(I)Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-static {v1, v2}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 689
    invoke-static {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mITtsListener:Lju;

    .line 686
    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 690
    check-cast p1, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->setAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    .line 691
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 693
    :cond_0
    return-void
.end method

.method protected stopAudition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    if-ne v0, p1, :cond_0

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mPlayingIndex:I

    .line 219
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 223
    :cond_0
    return-void
.end method

.method protected stopAudition(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 670
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAudtionCount:I

    .line 671
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 672
    check-cast p1, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    .line 673
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    :cond_0
    return-void
.end method

.method protected updateFirstTimeAudition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mFirstTimeAudition:Z

    .line 583
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PRIVACY_AUDTION"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 585
    return-void
.end method

.method protected updateList()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->setContactItems(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    goto :goto_0
.end method

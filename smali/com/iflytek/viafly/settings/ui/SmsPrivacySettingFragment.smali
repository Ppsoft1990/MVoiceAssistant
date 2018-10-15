.class public Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "SmsPrivacySettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$MyHandler;,
        Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;,
        Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;
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

.field auditionParams:Landroid/os/Bundle;

.field private mAdapter:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

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

.field private mPlayingItemView:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

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

    .line 53
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->TAG:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->ADD_CONTACT_RESULT_CODE:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .line 80
    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mFirstTimeAudition:Z

    .line 82
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    .line 84
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAnotherAudtionStarted:Z

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSynchronizedObject:Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem$a;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem$a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

    .line 571
    new-instance v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mITtsListener:Lju;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAnotherAudtionStarted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAnotherAudtionStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mFirstTimeAudition:Z

    return v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSynchronizedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    return p1
.end method

.method static synthetic access$910(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    return v0
.end method

.method private addChildren()V
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03012c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void
.end method


# virtual methods
.method protected hideAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V
    .locals 2
    .param p1, "contactNameView"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-static {p1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->access$200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_0
    return-void
.end method

.method protected isFirstTimeAudition()Z
    .locals 3

    .prologue
    .line 556
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
    .line 285
    if-eqz p1, :cond_2

    .line 288
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 290
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 292
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 293
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 294
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 297
    :try_start_1
    new-instance v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 298
    .local v1, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v5, "number"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v5, "sortKey"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->e(Ljava/lang/String;)V

    .line 301
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .end local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    .end local v0    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "len":I
    :cond_2
    :goto_2
    return-void

    .line 309
    :catch_0
    move-exception v5

    goto :goto_2

    .line 302
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
    .line 264
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 265
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 267
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 268
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 270
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v5, "number"

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string/jumbo v5, "sortKey"

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "len":I
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 274
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
    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 317
    packed-switch p1, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_0
    if-eqz p3, :cond_0

    .line 321
    :try_start_0
    const-string/jumbo v1, "selectedName"

    .line 322
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 323
    .local v0, "tmpDataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v0, :cond_0

    .line 324
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    .line 325
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mComparator:Lcom/iflytek/base/contacts/entities/ContactItem$a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->updateList()V

    .line 327
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->savePrivacyContact()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v0    # "tmpDataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

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

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 107
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 110
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 111
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 114
    .local v0, "a":I
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v7, v0, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 122
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->addChildren()V

    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->addContentView(Landroid/view/View;)V

    .line 125
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

    .line 625
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mFirstTimeAudition:Z

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->updateFirstTimeAudition()V

    .line 627
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSynchronizedObject:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    if-ne v2, v0, :cond_2

    .line 632
    invoke-virtual {p0, p2, p3}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->startAudition(Landroid/view/View;I)V

    .line 645
    :cond_1
    :goto_0
    monitor-exit v1

    .line 646
    return-void

    .line 634
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    if-eq v0, p3, :cond_3

    .line 635
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_1

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAnotherAudtionStarted:Z

    .line 637
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->stopAudition(Landroid/view/View;)V

    .line 638
    invoke-virtual {p0, p2, p3}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->startAudition(Landroid/view/View;I)V

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 641
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->stopAudition(Landroid/view/View;)V

    .line 642
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onStop()V

    .line 196
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 130
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    new-instance v2, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$MyHandler;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$MyHandler;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    .line 134
    const v2, 0x7f0c0225

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 135
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->setTitleStyle(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->setBackBtnResource(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 142
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->isFirstTimeAudition()Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mFirstTimeAudition:Z

    .line 154
    new-instance v2, Lpp;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->readPrivacyContact()V

    .line 156
    new-instance v2, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    .line 158
    const v2, 0x7f0b0497

    .line 159
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyAdd:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 160
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyAdd:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v2, 0x7f0b0496

    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 172
    const v2, 0x7f0b0495

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XListView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    .line 174
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->updateList()V

    .line 178
    return-void
.end method

.method protected readPrivacyContact()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    .line 244
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOTIFY_SMS_PRIVACY_CONTACT"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->jsonToList(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method protected savePrivacyContact()V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method protected setAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V
    .locals 2
    .param p1, "contactNameView"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .prologue
    .line 342
    if-eqz p1, :cond_0

    .line 343
    invoke-static {p1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->access$200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_0
    return-void
.end method

.method protected showListTip()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 216
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startAudition(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_1

    .line 667
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    .line 668
    iput p2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    move-object v0, p1

    .line 669
    check-cast v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingItemView:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .line 670
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->auditionParams:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->auditionParams:Landroid/os/Bundle;

    .line 672
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->auditionParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->auditionParams:Landroid/os/Bundle;

    .line 673
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->auditionParams:Landroid/os/Bundle;

    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mContext:Landroid/content/Context;

    .line 677
    invoke-static {v1}, Lhq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->auditionParams:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mITtsListener:Lju;

    .line 676
    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 679
    check-cast p1, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->setAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    .line 680
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 682
    :cond_1
    return-void
.end method

.method protected stopAudition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 202
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    if-ne v0, p1, :cond_0

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mPlayingIndex:I

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected stopAudition(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 654
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAudtionCount:I

    .line 655
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 656
    check-cast p1, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    .line 657
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    :cond_0
    return-void
.end method

.method protected updateFirstTimeAudition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    iput-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mFirstTimeAudition:Z

    .line 567
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PRIVACY_AUDTION"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 569
    return-void
.end method

.method protected updateList()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mSelectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->setContactItems(Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mAdapter:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mListEmptyTip:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->mBroadcastPrivacyListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    goto :goto_0
.end method

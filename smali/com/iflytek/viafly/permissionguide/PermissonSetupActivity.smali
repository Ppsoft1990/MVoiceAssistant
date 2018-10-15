.class public Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "PermissonSetupActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/iflytek/common/permission/data/Permission;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->c:J

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Lcom/iflytek/common/permission/data/Permission;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "PERMISSON_SETUP_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "guidePath"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 403
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 405
    .local v5, "guideJson":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 406
    .local v0, "appActivityName":Ljava/lang/String;
    const-string/jumbo v9, "appActivityName"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 407
    const-string/jumbo v9, "appActivityName"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    if-eqz v0, :cond_2

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "appPackageName":Ljava/lang/String;
    const-string/jumbo v9, "appPackageName"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 412
    const-string/jumbo v9, "appPackageName"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_1
    if-eqz v1, :cond_5

    .line 415
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .local v2, "compName":Landroid/content/ComponentName;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 428
    .end local v1    # "appPackageName":Ljava/lang/String;
    .end local v2    # "compName":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 429
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 430
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 432
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v9, "appPackageName"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "appActivityName"

    .line 433
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 436
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 438
    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 441
    .end local v0    # "appActivityName":Ljava/lang/String;
    .end local v5    # "guideJson":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 442
    .local v4, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v10, "parseGuidePath"

    invoke-static {v9, v10, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_4
    return-void

    .line 419
    .restart local v0    # "appActivityName":Ljava/lang/String;
    .restart local v1    # "appPackageName":Ljava/lang/String;
    .restart local v5    # "guideJson":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 420
    .restart local v2    # "compName":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 421
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v2    # "compName":Landroid/content/ComponentName;
    .local v3, "compName":Landroid/content/ComponentName;
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lcom/iflytek/base/skin/customView/XLinearLayout;)V
    .locals 4
    .param p1, "container"    # Lcom/iflytek/base/skin/customView/XLinearLayout;

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 179
    sget-object v2, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "initSubView container == null"

    invoke-static {v2, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b:Lcom/iflytek/common/permission/data/Permission;

    invoke-virtual {v2}, Lcom/iflytek/common/permission/data/Permission;->getPermissionGuides()[Lcom/iflytek/common/permission/data/PermissionGuide;

    move-result-object v0

    .line 184
    .local v0, "guides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 185
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "PermissionGuide[] length == 0"

    invoke-static {v2, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 190
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/common/permission/data/PermissionGuide;I)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/common/permission/data/PermissionGuide;I)V
    .locals 16
    .param p1, "container"    # Lcom/iflytek/base/skin/customView/XLinearLayout;
    .param p2, "perGuide"    # Lcom/iflytek/common/permission/data/PermissionGuide;
    .param p3, "position"    # I

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 201
    sget-object v11, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v12, "addSetupView perGuide == null"

    invoke-static {v11, v12}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "guideItemLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 207
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 208
    .local v2, "guideItemParam":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v11

    const-string/jumbo v12, "70"

    const-string/jumbo v13, "76"

    const-string/jumbo v14, "70"

    const-string/jumbo v15, "0"

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v5, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 214
    .local v5, "setupButton":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const-string/jumbo v11, "image.btn_menu_install_nor"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v11, v12}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 215
    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setGravity(I)V

    .line 216
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 217
    .local v6, "setupButtonParam":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v1, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v11

    const-string/jumbo v12, "16"

    sget-object v13, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 220
    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v11

    const-string/jumbo v12, "88"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v11

    const-string/jumbo v12, "580"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 223
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v8, "setupTitle":Lcom/iflytek/base/skin/customView/XTextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, p3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuideName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "textContent":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine(Z)V

    .line 227
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 228
    const/16 v11, 0x13

    invoke-virtual {v8, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 229
    const-string/jumbo v11, "permission_setup_item_text_style"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 230
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v9, "setupTitleParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0x9

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    const/16 v11, 0xf

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    invoke-virtual {v5, v8, v9}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v11

    const-string/jumbo v12, "50"

    const-string/jumbo v13, "0"

    const-string/jumbo v14, "0"

    const-string/jumbo v15, "0"

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v3, "setupArrowImg":Lcom/iflytek/base/skin/customView/XImageView;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/iflytek/base/skin/customView/XImageView;->setId(I)V

    .line 239
    const-string/jumbo v11, "image.ic_permission_list_arrow_nor"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v11, v12}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 240
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v4, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v4, "setupArrowImgParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xb

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    const/16 v11, 0xf

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    invoke-virtual {v5, v3, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v11

    const-string/jumbo v12, "50"

    sget-object v13, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 247
    new-instance v7, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v7, "setupInfoView":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuidePrompt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const-string/jumbo v11, "permission_setup_item_tip_style"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v7, v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 250
    invoke-virtual {v1, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 253
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 256
    new-instance v11, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5, v8, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;-><init>(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Lcom/iflytek/base/skin/customView/XRelativeLayout;Lcom/iflytek/base/skin/customView/XTextView;Lcom/iflytek/base/skin/customView/XImageView;)V

    invoke-virtual {v1, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    new-instance v11, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;-><init>(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;)V

    invoke-virtual {v1, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/common/permission/data/PermissionGuide;)V
    .locals 3
    .param p1, "guide"    # Lcom/iflytek/common/permission/data/PermissionGuide;

    .prologue
    .line 477
    if-nez p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuideName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u767d\u540d\u5355"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SCHEDULE_PERMiSSION_CLICKED_WHITELIST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Lcom/iflytek/common/permission/data/PermissionGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;
    .param p1, "x1"    # Lcom/iflytek/common/permission/data/PermissionGuide;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/common/permission/data/PermissionGuide;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string/jumbo v0, "PERMISSON_SETUP_DATA_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    iput-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b:Lcom/iflytek/common/permission/data/Permission;

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b:Lcom/iflytek/common/permission/data/Permission;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 362
    if-nez p1, :cond_0

    .line 363
    sget-object v3, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "packageName is null"

    invoke-static {v3, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 379
    :goto_0
    return v3

    .line 367
    :cond_0
    :try_start_0
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 368
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 369
    .local v0, "currentRunningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 370
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 371
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 372
    goto :goto_0

    .line 375
    .end local v0    # "currentRunningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 379
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 448
    if-nez p1, :cond_1

    .line 449
    sget-object v6, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    const-string/jumbo v7, "getComponentByPackage pkg is null"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return-object v5

    .line 453
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 456
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 457
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 458
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    .line 461
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 462
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 463
    .local v0, "Name":Ljava/lang/String;
    sget-object v5, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getComponentByPackage activityInfo.name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;)Lcom/iflytek/common/permission/data/Permission;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b:Lcom/iflytek/common/permission/data/Permission;

    return-object v0
.end method

.method private b()V
    .locals 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 143
    new-instance v2, Lcom/iflytek/base/skin/customView/XScrollView;

    invoke-direct {v2, p0}, Lcom/iflytek/base/skin/customView/XScrollView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v2, "scrollView":Lcom/iflytek/base/skin/customView/XScrollView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    .local v3, "scrollViewParam":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "containerLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 150
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 151
    .local v1, "containerParam":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v4, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v4, p0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v4, "subTitle":Lcom/iflytek/base/skin/customView/XTextView;
    const v8, 0x7f0c0145

    invoke-virtual {v4, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 155
    const-string/jumbo v8, "permission_setup_title_style"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 156
    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    .line 158
    .local v5, "subTitleHelper":Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    const-string/jumbo v8, "70"

    const-string/jumbo v9, "50"

    const-string/jumbo v10, "70"

    const-string/jumbo v11, "0"

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/base/skin/customView/XLinearLayout;)V

    .line 162
    new-instance v7, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v7, p0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v7, "tipText":Lcom/iflytek/base/skin/customView/XTextView;
    const v8, 0x7f0c0140

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 164
    const-string/jumbo v8, "permission_setup_tip_style"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 165
    invoke-virtual {v0, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v7}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v6

    .line 167
    .local v6, "tipHelper":Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    const-string/jumbo v8, "70"

    const-string/jumbo v9, "80"

    const-string/jumbo v10, "70"

    const-string/jumbo v11, "30"

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2, v0}, Lcom/iflytek/base/skin/customView/XScrollView;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->setBackgroundColor(I)V

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->setTitleBarBg()V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->setTitleBarVisible(Z)V

    .line 112
    const v0, 0x7f0c0144

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->setTitleName(I)V

    .line 114
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->finish()V

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

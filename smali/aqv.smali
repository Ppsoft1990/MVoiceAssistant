.class public Laqv;
.super Ljava/lang/Object;
.source "PermissionUiManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Laqv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Laqv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laqv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laqv;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Laqv;->b:Laqv;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Laqv;

    invoke-direct {v0}, Laqv;-><init>()V

    sput-object v0, Laqv;->b:Laqv;

    .line 87
    :cond_0
    sget-object v0, Laqv;->b:Laqv;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const-string/jumbo v1, ""

    .line 479
    .local v1, "appNames":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 480
    const-string/jumbo v3, ""

    .line 481
    .local v3, "softInfo":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/permission/data/Permission;

    .line 482
    .local v2, "per":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v2}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v0

    .line 483
    .local v0, "app":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v0, :cond_0

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6216"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    goto :goto_0

    .line 488
    .end local v0    # "app":Lcom/iflytek/common/permission/data/PermissionApp;
    .end local v2    # "per":Lcom/iflytek/common/permission/data/Permission;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 490
    .end local v3    # "softInfo":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "showedFlag":Z
    const-string/jumbo v1, "record"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "RECORD_NO_DATA"

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "PERMISSION_SETTING_RECORD_FLAG"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 124
    :cond_2
    const-string/jumbo v1, "location"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "PERMISSION_SETTING_LOCATION_FLAG"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_3
    const-string/jumbo v1, "contact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "PERMISSION_SETTING_CONTACT_FLAG"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_4
    const-string/jumbo v1, "callnote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "PERMISSION_SETTING_CALL_LOG_FLAG"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_5
    const-string/jumbo v1, "write_call_log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "PERMISSION_SETTING_WRITE_CALL_LOG_FLAG"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 132
    :cond_6
    const-string/jumbo v1, "write_contact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "PERMISSION_SETTING_WRITE_CONTACT_FLAG"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/iflytek/common/permission/data/Permission;)Z
    .locals 7
    .param p2, "permission"    # Lcom/iflytek/common/permission/data/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;",
            "Lcom/iflytek/common/permission/data/Permission;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const/4 v3, 0x0

    .line 195
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v3

    .line 198
    :cond_1
    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v0

    .line 202
    .local v0, "orginPermissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/permission/data/Permission;

    .line 208
    .local v1, "tPermission":Lcom/iflytek/common/permission/data/Permission;
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v2

    .line 212
    .local v2, "tPermissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string/jumbo v0, "\u6743\u9650\u7ba1\u7406\u63d0\u793a"

    .line 329
    .local v0, "title":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 330
    const-string/jumbo v1, "record"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "RECORD_NO_DATA"

    .line 331
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    :cond_0
    const-string/jumbo v0, "\u5f55\u97f3\u5931\u8d25\u7684\u539f\u56e0"

    .line 343
    :cond_1
    :goto_0
    return-object v0

    .line 333
    :cond_2
    const-string/jumbo v1, "location"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    const-string/jumbo v0, "\u5730\u7406\u4f4d\u7f6e\u83b7\u53d6\u5931\u8d25\u7684\u539f\u56e0"

    goto :goto_0

    .line 335
    :cond_3
    const-string/jumbo v1, "contact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    const-string/jumbo v0, "\u8bfb\u53d6\u8054\u7cfb\u4eba\u5931\u8d25\u7684\u539f\u56e0"

    goto :goto_0

    .line 337
    :cond_4
    const-string/jumbo v1, "write_contact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 338
    const-string/jumbo v0, "\u65b0\u5efa\u8054\u7cfb\u4eba\u5931\u8d25\u7684\u539f\u56e0"

    goto :goto_0

    .line 339
    :cond_5
    const-string/jumbo v1, "write_call_log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const-string/jumbo v0, "\u5220\u9664\u901a\u8bdd\u8bb0\u5f55\u5931\u8d25\u7684\u539f\u56e0"

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const v3, 0x7f0c013f

    .line 413
    const/4 v1, 0x0

    .line 415
    .local v1, "tipText":Ljava/lang/String;
    invoke-direct {p0, p3}, Laqv;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 416
    :cond_0
    const-string/jumbo v2, "record"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    const v2, 0x7f0c0141

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 435
    invoke-direct {p0, p2}, Laqv;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "appNames":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 438
    const-string/jumbo v2, "record"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 439
    const v2, 0x7f0c0142

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    :goto_1
    const-string/jumbo v2, "PERMISSION_SOFT_REPLACEMENT"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .end local v0    # "appNames":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v1

    .line 418
    :cond_3
    const-string/jumbo v2, "RECORD_NO_DATA"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    const v2, 0x7f0c0143

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 420
    :cond_4
    const-string/jumbo v2, "location"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 421
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 422
    :cond_5
    const-string/jumbo v2, "location"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 423
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 424
    :cond_6
    const-string/jumbo v2, "contact"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 425
    const v2, 0x7f0c013e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 426
    :cond_7
    const-string/jumbo v2, "write_contact"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 427
    const v2, 0x7f0c0149

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 428
    :cond_8
    const-string/jumbo v2, "callnote"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 429
    const v2, 0x7f0c013d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 430
    :cond_9
    const-string/jumbo v2, "write_call_log"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const v2, 0x7f0c0148

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 441
    .restart local v0    # "appNames":Ljava/lang/String;
    :cond_a
    const-string/jumbo v2, "PERMISSION_SINGLE_WORD_REPLACEMENT"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 444
    :cond_b
    const-string/jumbo v2, "PERMISSION_SINGLE_WORD_REPLACEMENT"

    const-string/jumbo v3, "\u5230"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 449
    .end local v0    # "appNames":Ljava/lang/String;
    :cond_c
    const v2, 0x7f0c0146

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "record"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "RECORD_NO_DATA"

    .line 451
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 452
    :cond_d
    const-string/jumbo v2, "BUSINESS_REPLACEMENT"

    const-string/jumbo v3, "\u5f55\u97f3\u529f\u80fd"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 465
    :cond_e
    :goto_3
    invoke-direct {p0, p2}, Laqv;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .restart local v0    # "appNames":Ljava/lang/String;
    const-string/jumbo v2, "PERMISSION_SOFT_REPLACEMENT"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 453
    .end local v0    # "appNames":Ljava/lang/String;
    :cond_f
    const-string/jumbo v2, "location"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 454
    const-string/jumbo v2, "BUSINESS_REPLACEMENT"

    const-string/jumbo v3, "\u5b9a\u4f4d\u529f\u80fd"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 455
    :cond_10
    const-string/jumbo v2, "contact"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 456
    const-string/jumbo v2, "BUSINESS_REPLACEMENT"

    const-string/jumbo v3, "\u8bfb\u53d6\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 457
    :cond_11
    const-string/jumbo v2, "write_contact"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 458
    const-string/jumbo v2, "BUSINESS_REPLACEMENT"

    const-string/jumbo v3, "\u65b0\u5efa\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 459
    :cond_12
    const-string/jumbo v2, "callnote"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 460
    const-string/jumbo v2, "BUSINESS_REPLACEMENT"

    const-string/jumbo v3, "\u8bfb\u53d6\u6700\u8fd1\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 461
    :cond_13
    const-string/jumbo v2, "write_call_log"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 462
    const-string/jumbo v2, "BUSINESS_REPLACEMENT"

    const-string/jumbo v3, "\u5220\u9664\u901a\u8bdd\u8bb0\u5f55"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x0

    .line 235
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 244
    invoke-virtual {p0, p1, p2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    if-nez v2, :cond_1

    .line 246
    sget-object v3, Laqv;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSimpleDialog type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0, p1, v2, p2}, Laqv;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, "contentView":Landroid/view/View;
    new-instance v3, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-direct {v3, p1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "\u6743\u9650\u7ba1\u7406\u63d0\u793a"

    .line 253
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    const/4 v4, -0x2

    .line 254
    invoke-virtual {v3, v1, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setContentView(Landroid/view/View;I)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    .line 255
    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "\u77e5\u9053\u4e86"

    const/4 v5, 0x0

    .line 256
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "\u53bb\u8bbe\u7f6e"

    sget-object v5, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    new-instance v6, Laqv$1;

    invoke-direct {v6, p0, v2, p1, p2}, Laqv$1;-><init>(Laqv;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3, v4, v5, v6}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v0

    .line 268
    .local v0, "builder":Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    invoke-virtual {v0, v7, v8}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsNeedDismiss(ZZ)V

    .line 269
    const/16 v3, 0x51

    invoke-virtual {v0, v3, v8, v8}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 270
    const-string/jumbo v3, "record"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "RECORD_NO_DATA"

    .line 271
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "PERMISSION_SETTING_RECORD_FLAG"

    invoke-virtual {v3, v4, v7}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 273
    :cond_3
    const-string/jumbo v3, "location"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "PERMISSION_SETTING_LOCATION_FLAG"

    invoke-virtual {v3, v4, v7}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 275
    :cond_4
    const-string/jumbo v3, "contact"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "PERMISSION_SETTING_CONTACT_FLAG"

    invoke-virtual {v3, v4, v7}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 277
    :cond_5
    const-string/jumbo v3, "callnote"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 278
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "PERMISSION_SETTING_CALL_LOG_FLAG"

    invoke-virtual {v3, v4, v7}, Lil;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 279
    :cond_6
    const-string/jumbo v3, "write_call_log"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "PERMISSION_SETTING_WRITE_CALL_LOG_FLAG"

    invoke-virtual {v3, v4, v7}, Lil;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 281
    :cond_7
    const-string/jumbo v3, "write_contact"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "PERMISSION_SETTING_WRITE_CONTACT_FLAG"

    invoke-virtual {v3, v4, v7}, Lil;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    invoke-virtual {p0, p1, p2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 296
    .local v2, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-virtual {p0, p1, v2, p2}, Laqv;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "contentView":Landroid/view/View;
    new-instance v3, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-direct {v3, p1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-direct {p0, p2}, Laqv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    const/4 v4, -0x2

    .line 300
    invoke-virtual {v3, v1, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setContentView(Landroid/view/View;I)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    .line 301
    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v0

    .line 302
    .local v0, "builder":Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 303
    :cond_0
    const-string/jumbo v3, "\u77e5\u9053\u4e86"

    sget-object v4, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    invoke-virtual {v0, v8, v3, v4, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 318
    :cond_1
    :goto_0
    invoke-virtual {v0, v8, v7}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsNeedDismiss(ZZ)V

    .line 319
    const/16 v3, 0x51

    invoke-virtual {v0, v3, v7, v7}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 320
    return-void

    .line 304
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 305
    const-string/jumbo v3, "\u77e5\u9053\u4e86"

    invoke-virtual {v0, v3, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "\u53bb\u8bbe\u7f6e"

    sget-object v5, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    new-instance v6, Laqv$2;

    invoke-direct {v6, p0, v2, p1, p2}, Laqv$2;-><init>(Laqv;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3, v4, v5, v6}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p2, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const/4 v6, 0x0

    .line 354
    new-instance v0, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 355
    .local v0, "contentView":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v3, "style_permission_dialog_content_message"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 356
    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v0, v6, v3, v6, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 357
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLineSpacing(FF)V

    .line 358
    invoke-direct {p0, p1, p2, p3}, Laqv;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "tipText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 360
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 361
    .local v1, "tipSpanned":Landroid/text/Spanned;
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .end local v1    # "tipSpanned":Landroid/text/Spanned;
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 97
    :cond_0
    sget-object v0, Laqv;->a:Ljava/lang/String;

    const-string/jumbo v1, "showPermissionDialog (null == context || null == type) is true"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-direct {p0, p2}, Laqv;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0, p1, p2}, Laqv;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0, p1, p2}, Laqv;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-direct {p0, p1, p2}, Laqv;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-direct {p0, p1, p2}, Laqv;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p2, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const/4 v11, -0x1

    .line 374
    new-instance v1, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 375
    .local v1, "contanier":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 376
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 379
    .local v3, "notifyName":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setId(I)V

    .line 380
    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 381
    const v8, 0x7f0c00e0

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 382
    const-string/jumbo v8, "style_dlg_company_logo"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 383
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 384
    .local v4, "notifyNameParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 385
    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v8

    const-string/jumbo v9, "10"

    sget-object v10, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 389
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 390
    .local v2, "contentView":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v8, "style_permission_dialog_content_message"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 391
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setLineSpacing(FF)V

    .line 392
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 393
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x2

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XTextView;->getId()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 394
    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 396
    invoke-direct {p0, p1, p2, p3}, Laqv;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "tipText":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 398
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 399
    .local v6, "tipSpanned":Landroid/text/Spanned;
    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .end local v6    # "tipSpanned":Landroid/text/Spanned;
    :cond_0
    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 403
    return-object v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v7, 0x0

    .line 146
    .local v7, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-static/range {p1 .. p1}, Lon;->a(Landroid/content/Context;)V

    .line 147
    if-eqz p2, :cond_4

    .line 149
    const-string/jumbo v11, "RECORD_NO_DATA"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 150
    const-string/jumbo p2, "record"

    .line 152
    :cond_0
    const-string/jumbo v11, "\\|"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "types":[Ljava/lang/String;
    array-length v12, v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_5

    aget-object v9, v10, v11

    .line 154
    .local v9, "tType":Ljava/lang/String;
    invoke-static {}, Lon;->a()Lok;

    move-result-object v13

    invoke-interface {v13, v9}, Lok;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 155
    .local v8, "tPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-static {v8}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 156
    if-nez v7, :cond_1

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .restart local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/common/permission/data/Permission;

    .line 160
    .local v6, "permission":Lcom/iflytek/common/permission/data/Permission;
    invoke-direct {p0, v7, v6}, Laqv;->a(Ljava/util/List;Lcom/iflytek/common/permission/data/Permission;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 161
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .end local v6    # "permission":Lcom/iflytek/common/permission/data/Permission;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 167
    .end local v8    # "tPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    .end local v9    # "tType":Ljava/lang/String;
    .end local v10    # "types":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Lon;->a()Lok;

    move-result-object v11

    invoke-interface {v11}, Lok;->a()Ljava/util/List;

    move-result-object v7

    .line 169
    :cond_5
    if-eqz v7, :cond_7

    .line 170
    const-string/jumbo v3, "getprop "

    .line 171
    .local v3, "miui_rom_shell_command":Ljava/lang/String;
    const-string/jumbo v4, "ro.miui.ui.version.name"

    .line 173
    .local v4, "miui_rom_version_name":Ljava/lang/String;
    const-string/jumbo v11, "getprop "

    const-string/jumbo v12, "ro.miui.ui.version.name"

    invoke-static {v11, v12}, Lhl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "osName":Ljava/lang/String;
    const-string/jumbo v11, "V6"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "lastPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/common/permission/data/Permission;

    .line 178
    .restart local v6    # "permission":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v6}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v1

    .line 179
    .local v1, "app":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v1, :cond_6

    .line 182
    const-string/jumbo v12, "com.android.settings"

    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 185
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "app":Lcom/iflytek/common/permission/data/PermissionApp;
    .end local v2    # "lastPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    .end local v3    # "miui_rom_shell_command":Ljava/lang/String;
    .end local v4    # "miui_rom_version_name":Ljava/lang/String;
    .end local v5    # "osName":Ljava/lang/String;
    .end local v6    # "permission":Lcom/iflytek/common/permission/data/Permission;
    :cond_7
    move-object v2, v7

    .line 191
    :cond_8
    return-object v2
.end method

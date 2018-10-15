.class public Laba;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Laba;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "PersonalDataBaseUtil"

    sput-object v0, Laba;->a:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laba;->c:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laba;->d:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Laba;->e:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private a(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 255
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()Laba;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Laba;->b:Laba;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Laba;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/ViaFlyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laba;-><init>(Landroid/content/Context;)V

    sput-object v0, Laba;->b:Laba;

    .line 54
    invoke-static {}, Laba;->c()V

    .line 56
    :cond_0
    sget-object v0, Laba;->b:Laba;

    return-object v0
.end method

.method private a(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 2
    .param p1, "mContactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 123
    sget-object v0, Laba;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 124
    sget-object v0, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 311
    iget-object v2, p0, Laba;->e:Landroid/content/Context;

    const v3, 0x7f0c034c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v1

    .line 313
    .local v1, "simType":Lcom/iflytek/yd/system/SimType;
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_1

    .line 314
    iget-object v2, p0, Laba;->e:Landroid/content/Context;

    const v3, 0x7f0c0349

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Unicom:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_2

    .line 316
    iget-object v2, p0, Laba;->e:Landroid/content/Context;

    const v3, 0x7f0c034b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_2
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Telecom:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_0

    .line 318
    iget-object v2, p0, Laba;->e:Landroid/content/Context;

    const v3, 0x7f0c034a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 4
    .param p1, "mContactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 131
    sget-object v2, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 133
    sget-object v2, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    sget-object v2, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->d(Ljava/lang/String;)V

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 9
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p0, :cond_2

    .line 196
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 198
    sget-object v8, Laba;->c:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 199
    sget-object v8, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 200
    sget-object v8, Laba;->d:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 202
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 203
    .local v5, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 205
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 208
    :try_start_1
    const-string/jumbo v8, "number"

    .line 209
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "number":Ljava/lang/String;
    const-string/jumbo v8, "simMode"

    .line 211
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "simMode":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 213
    .local v2, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v2, v6}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2, v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->d(Ljava/lang/String;)V

    .line 215
    sget-object v8, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v8, Laba;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    .end local v2    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "simMode":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e1":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 223
    .end local v0    # "e1":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    :catch_1
    move-exception v8

    .line 226
    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 4
    .param p1, "simCard"    # Ljava/lang/String;

    .prologue
    .line 230
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 231
    .local v1, "targetSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const/4 v0, 0x0

    .line 233
    .local v0, "simMode":I
    if-nez p1, :cond_1

    .line 234
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v2, v3}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 238
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 239
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 251
    :cond_0
    return-object v1

    .line 236
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static c()V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_CONTACT_SIMMODE"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Laba;->b(Ljava/lang/String;)V

    .line 147
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Laba;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Laba;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Laba;->c(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laba;->c(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 345
    iget-object v1, p0, Laba;->e:Landroid/content/Context;

    const v2, 0x7f0c034c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "simName":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Laba;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {}, Laba;->a()Laba;

    move-result-object v1

    invoke-direct {v1, p2}, Laba;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 352
    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p2, v1, :cond_1

    .line 353
    const v1, 0x7f0c0346

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_1
    const v1, 0x7f0c0347

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;
    .locals 3
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p3, "pIsShowName"    # Z

    .prologue
    .line 366
    iget-object v1, p0, Laba;->e:Landroid/content/Context;

    const v2, 0x7f0c034c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "simName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 369
    invoke-static {}, Laba;->a()Laba;

    move-result-object v1

    invoke-direct {v1, p2}, Laba;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 372
    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p2, v1, :cond_1

    .line 373
    const v1, 0x7f0c0346

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_1
    const v1, 0x7f0c0347

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 94
    invoke-direct {p0, p2}, Laba;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 95
    .local v1, "simMode":I
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 96
    .local v0, "mContactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0, p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->d(Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    sget-object v2, Laba;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Laba;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v2, Laba;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, v0}, Laba;->b(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 115
    :goto_0
    invoke-virtual {p0}, Laba;->d()V

    .line 117
    :cond_0
    return-void

    .line 105
    :cond_1
    sget-object v2, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_2

    .line 106
    sget-object v2, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v2, Laba;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_2
    sget-object v3, Laba;->d:Ljava/util/HashMap;

    sget-object v2, Laba;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 110
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v2, Laba;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0, v0}, Laba;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v1

    invoke-virtual {v1}, Lhy;->j()Z

    move-result v0

    .line 64
    .local v0, "state":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laba;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    invoke-static {v1}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v1

    const-string/jumbo v2, "FD01006"

    const-string/jumbo v3, "sss_icc_appear"

    .line 69
    invoke-virtual {v1, v2, v3}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_DOUBLE_SIM_FLAG"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 75
    :cond_0
    return v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laba$1;

    invoke-direct {v1, p0}, Laba$1;-><init>(Laba;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 7

    .prologue
    .line 168
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 169
    .local v1, "jsonArray":Lorg/json/JSONArray;
    sget-object v4, Laba;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 170
    sget-object v4, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 171
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "number"

    sget-object v4, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 175
    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v5, "simMode"

    sget-object v4, Laba;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 177
    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->f()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "len":I
    :cond_0
    sget-object v4, Laba;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 179
    .restart local v0    # "i":I
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "len":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected f()Z
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_DOUBLE_SIM_FLAG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 5

    .prologue
    .line 275
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-direct {p0, v3}, Laba;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "sim1":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-direct {p0, v3}, Laba;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "sim2":Ljava/lang/String;
    iget-object v3, p0, Laba;->e:Landroid/content/Context;

    const v4, 0x7f0c034c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "unkownCard":Ljava/lang/String;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

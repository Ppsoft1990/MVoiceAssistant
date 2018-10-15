.class public Lacx;
.super Ljava/lang/Object;
.source "LatestCallView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# static fields
.field private static A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/lang/String;


# instance fields
.field a:Z

.field b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lorg/json/JSONArray;

.field public g:Ljava/lang/String;

.field public h:Lcom/iflytek/common/adaptation/entity/SimCard;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Lorg/json/JSONArray;

.field public o:Lorg/json/JSONArray;

.field public p:Lorg/json/JSONArray;

.field public q:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:Landroid/content/Context;

.field private z:Lcom/iflytek/base/contacts/entities/ContactSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lacx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lacx;->r:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lacx;->A:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "tel"    # Ljava/lang/String;
    .param p4, "callDate"    # Ljava/lang/String;
    .param p5, "callTime"    # Ljava/lang/String;
    .param p6, "isMobile"    # Z
    .param p7, "callType"    # I
    .param p8, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lacx;->w:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lacx;->f:Lorg/json/JSONArray;

    .line 62
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lacx;->n:Lorg/json/JSONArray;

    .line 63
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lacx;->o:Lorg/json/JSONArray;

    .line 64
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lacx;->p:Lorg/json/JSONArray;

    .line 70
    iput-object p2, p0, Lacx;->s:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lacx;->t:Ljava/lang/String;

    .line 72
    iput-boolean p6, p0, Lacx;->a:Z

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lacx;->u:Ljava/lang/String;

    .line 74
    iput p7, p0, Lacx;->b:I

    .line 75
    iput-object p8, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 76
    iget-object v1, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lacx;->v:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "number":Ljava/lang/String;
    iget-object v2, p0, Lacx;->w:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lacx;->y:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 355
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 356
    sget-object v0, Lacx;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    sget-object v0, Lacx;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lacx;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lacx;->x:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 188
    iget-object v11, p0, Lacx;->v:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 189
    const-string/jumbo v11, ""

    iput-object v11, p0, Lacx;->v:Ljava/lang/String;

    .line 191
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v3, "jsonItem":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 193
    .local v5, "jsonNumbers":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v4, "jsonLocation":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 195
    .local v6, "jsonSims":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 196
    .local v2, "jsonArray_SimName":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 198
    .local v1, "isShowSimName":Z
    iget-object v11, p0, Lacx;->s:Ljava/lang/String;

    iput-object v11, p0, Lacx;->c:Ljava/lang/String;

    .line 199
    iget-object v11, p0, Lacx;->t:Ljava/lang/String;

    iput-object v11, p0, Lacx;->d:Ljava/lang/String;

    .line 200
    iget-boolean v11, p0, Lacx;->a:Z

    iput-boolean v11, p0, Lacx;->e:Z

    .line 201
    iget-object v11, p0, Lacx;->f:Lorg/json/JSONArray;

    iget-object v12, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    iget-object v13, p0, Lacx;->t:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    iget-object v11, p0, Lacx;->u:Ljava/lang/String;

    iput-object v11, p0, Lacx;->g:Ljava/lang/String;

    .line 203
    iget v11, p0, Lacx;->b:I

    iput v11, p0, Lacx;->i:I

    .line 204
    iget-object v11, p0, Lacx;->v:Ljava/lang/String;

    iput-object v11, p0, Lacx;->j:Ljava/lang/String;

    .line 205
    iput-boolean v9, p0, Lacx;->k:Z

    .line 206
    iget-object v11, p0, Lacx;->x:Ljava/lang/String;

    iput-object v11, p0, Lacx;->l:Ljava/lang/String;

    .line 208
    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    invoke-virtual {v11}, Laba;->b()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 209
    iput-boolean v9, p0, Lacx;->q:Z

    .line 210
    iget-object v11, p0, Lacx;->t:Ljava/lang/String;

    invoke-direct {p0, v11}, Lacx;->b(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v11

    iput-object v11, p0, Lacx;->h:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 212
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v11, v12}, Lil;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    invoke-virtual {v11}, Laba;->g()Z

    move-result v11

    if-eqz v11, :cond_1

    move v1, v9

    .line 215
    :goto_0
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    iget-object v11, p0, Lacx;->y:Landroid/content/Context;

    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v10, v11, v12, v1}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 216
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    iget-object v11, p0, Lacx;->y:Landroid/content/Context;

    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v10, v11, v12, v1}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 220
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    .line 221
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 219
    invoke-static {v10}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v10

    const-string/jumbo v11, "FD01018"

    const-string/jumbo v12, "tss_icc_appear"

    .line 222
    invoke-virtual {v10, v11, v12}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_1
    iput-boolean v1, p0, Lacx;->m:Z

    .line 231
    iput-object v2, p0, Lacx;->n:Lorg/json/JSONArray;

    .line 234
    iget-object v10, p0, Lacx;->w:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lacx;->w:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v9, :cond_5

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v9, p0, Lacx;->w:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 236
    iget-object v9, p0, Lacx;->w:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 237
    .local v7, "number":Ljava/lang/String;
    iget-object v9, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v9, v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 238
    const-string/jumbo v9, "&"

    const-string/jumbo v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "tempNum":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 240
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9}, Laba;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 241
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9, v8}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 235
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "tempNum":Ljava/lang/String;
    :cond_1
    move v1, v10

    .line 213
    goto/16 :goto_0

    .line 226
    :cond_2
    iput-boolean v10, p0, Lacx;->q:Z

    goto :goto_1

    .line 243
    .restart local v0    # "i":I
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v8    # "tempNum":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "notdouble"

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 246
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "tempNum":Ljava/lang/String;
    :cond_4
    iput-object v5, p0, Lacx;->o:Lorg/json/JSONArray;

    .line 247
    iput-object v4, p0, Lacx;->f:Lorg/json/JSONArray;

    .line 248
    iput-object v6, p0, Lacx;->p:Lorg/json/JSONArray;

    .line 250
    .end local v0    # "i":I
    :cond_5
    const-string/jumbo v9, "trace"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 257
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "args":Lorg/json/JSONArray;
    const-string/jumbo v6, "opRecoSmsHome"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    sget-object v6, Lacx;->r:Ljava/lang/String;

    const-string/jumbo v7, "opRecoSmsHome"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v6

    const-string/jumbo v7, "recent_contact_send_msg"

    invoke-virtual {v6, v7}, Lwx;->a(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v6, v7}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 264
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "name":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "tel":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u53d1\u77ed\u4fe1\u7ed9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "rawtext":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Labd;->b(Z)V

    .line 278
    iget-object v6, p0, Lacx;->y:Landroid/content/Context;

    const-string/jumbo v7, "action_send_message_to_special"

    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/iflytek/framework/business/speech/ManualSelectHandler;->selectHandle(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "args":Lorg/json/JSONArray;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "rawtext":Ljava/lang/String;
    .end local v5    # "tel":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    return-object v6

    .line 282
    .restart local v0    # "args":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "opRecoCall"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 283
    sget-object v6, Lacx;->r:Ljava/lang/String;

    const-string/jumbo v7, "opRecoCall"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    .restart local v5    # "tel":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .restart local v3    # "name":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 288
    .local v2, "isDefault":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 289
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 292
    sget-object v6, Lacx;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "----->>isDefault: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v6

    const-string/jumbo v7, "FD02019"

    invoke-virtual {v6, v7}, Labu;->a(Ljava/lang/String;)V

    .line 299
    :cond_2
    :goto_1
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 301
    iget-object v6, p0, Lacx;->y:Landroid/content/Context;

    const-string/jumbo v7, "call"

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v6, v7, v8, v9}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 337
    .end local v0    # "args":Lorg/json/JSONArray;
    .end local v2    # "isDefault":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tel":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lacx;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "args":Lorg/json/JSONArray;
    .restart local v2    # "isDefault":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tel":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "false"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    sget-object v6, Lacx;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "----->>isDefault: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v6

    const-string/jumbo v7, "FD02020"

    invoke-virtual {v6, v7}, Labu;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_4
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v6

    invoke-virtual {v6, v5}, Lgx;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    .end local v2    # "isDefault":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tel":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "opRecoSmsSubPage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    sget-object v6, Lacx;->r:Ljava/lang/String;

    const-string/jumbo v7, "opRecoSmsSubPage"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v6

    const-string/jumbo v7, "recent_contact_send_msg"

    invoke-virtual {v6, v7}, Lwx;->a(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v6, v7}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 318
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 320
    .restart local v5    # "tel":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u53d1\u77ed\u4fe1\u7ed9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    .restart local v4    # "rawtext":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Labd;->b(Z)V

    .line 332
    iget-object v6, p0, Lacx;->y:Landroid/content/Context;

    const-string/jumbo v7, "action_send_message_to_special"

    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/iflytek/framework/business/speech/ManualSelectHandler;->selectHandle(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 98
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, "LatestCallView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 345
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 103
    iget-object v11, p0, Lacx;->v:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 104
    const-string/jumbo v11, ""

    iput-object v11, p0, Lacx;->v:Ljava/lang/String;

    .line 107
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v4, "jsonItem":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .local v6, "jsonNumbers":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 110
    .local v5, "jsonLocation":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v7, "jsonSims":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 112
    .local v3, "jsonArray_SimName":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 114
    .local v2, "isShowSimName":Z
    const-string/jumbo v11, "name"

    iget-object v12, p0, Lacx;->s:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v11, "tel"

    iget-object v12, p0, Lacx;->t:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v11, "mobile"

    iget-boolean v12, p0, Lacx;->a:Z

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v11, "location"

    iget-object v12, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    iget-object v13, p0, Lacx;->t:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v11, "time"

    iget-object v12, p0, Lacx;->u:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v11, "type"

    iget v12, p0, Lacx;->b:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v11, "iconURL"

    iget-object v12, p0, Lacx;->v:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v11, "isScrollToPreviousElement"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v11, "focus"

    iget-object v12, p0, Lacx;->x:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v11, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    invoke-virtual {v11}, Laba;->b()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    const-string/jumbo v11, "defaultSimCard"

    iget-object v12, p0, Lacx;->t:Ljava/lang/String;

    invoke-direct {p0, v12}, Lacx;->b(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v11, v12}, Lil;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 128
    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    invoke-virtual {v11}, Laba;->g()Z

    move-result v11

    if-eqz v11, :cond_1

    move v2, v10

    .line 130
    :goto_0
    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    iget-object v12, p0, Lacx;->y:Landroid/content/Context;

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v11, v12, v13, v2}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 131
    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    iget-object v12, p0, Lacx;->y:Landroid/content/Context;

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v11, v12, v13, v2}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 135
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v11

    .line 136
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 134
    invoke-static {v11}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v11

    const-string/jumbo v12, "FD01018"

    const-string/jumbo v13, "tss_icc_appear"

    .line 137
    invoke-virtual {v11, v12, v13}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    const-string/jumbo v11, "isShowSimName"

    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v11, "SimNameList"

    invoke-virtual {v4, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-object v11, p0, Lacx;->w:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lacx;->w:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v10, :cond_5

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v10, p0, Lacx;->w:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 150
    iget-object v10, p0, Lacx;->w:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    .local v8, "number":Ljava/lang/String;
    iget-object v10, p0, Lacx;->z:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10, v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    const-string/jumbo v10, "&"

    const-string/jumbo v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, "tempNum":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->b()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10, v9}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 149
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    .end local v1    # "i":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "tempNum":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 141
    :cond_2
    const-string/jumbo v11, "defaultSimCard"

    const-string/jumbo v12, "notdouble"

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v2    # "isShowSimName":Z
    .end local v3    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v4    # "jsonItem":Lorg/json/JSONObject;
    .end local v5    # "jsonLocation":Lorg/json/JSONArray;
    .end local v6    # "jsonNumbers":Lorg/json/JSONArray;
    .end local v7    # "jsonSims":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/json/JSONException;
    sget-object v10, Lacx;->r:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v4, 0x0

    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-object v4

    .line 157
    .restart local v1    # "i":I
    .restart local v2    # "isShowSimName":Z
    .restart local v3    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v4    # "jsonItem":Lorg/json/JSONObject;
    .restart local v5    # "jsonLocation":Lorg/json/JSONArray;
    .restart local v6    # "jsonNumbers":Lorg/json/JSONArray;
    .restart local v7    # "jsonSims":Lorg/json/JSONArray;
    .restart local v8    # "number":Ljava/lang/String;
    .restart local v9    # "tempNum":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v10, "notdouble"

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 160
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "tempNum":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "muiltNumbers"

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string/jumbo v10, "location"

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string/jumbo v10, "defaultSimCards"

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    .end local v1    # "i":I
    :cond_5
    const-string/jumbo v10, "trace"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

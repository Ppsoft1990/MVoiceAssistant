.class public Lacy;
.super Ljava/lang/Object;
.source "LatestSmsView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Landroid/content/Context;

.field a:Z

.field b:Z

.field c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Labx;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lacy;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Labx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pBusinessHandler"    # Labx;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "tel"    # Ljava/lang/String;
    .param p5, "callDate"    # Ljava/lang/String;
    .param p6, "callTime"    # Ljava/lang/String;
    .param p7, "callType"    # I
    .param p8, "isMuiltNumber"    # Z

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lacy;->y:Z

    .line 52
    iput-boolean v0, p0, Lacy;->z:Z

    .line 53
    iput-boolean v0, p0, Lacy;->A:Z

    .line 54
    iput-boolean v0, p0, Lacy;->B:Z

    .line 55
    iput-boolean v0, p0, Lacy;->C:Z

    .line 83
    iput-object p2, p0, Lacy;->w:Labx;

    .line 84
    iput-object p1, p0, Lacy;->D:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lacy;->t:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lacy;->u:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p3, p4}, Lacy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lacy;->a:Z

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacy;->v:Ljava/lang/String;

    .line 89
    iput p7, p0, Lacy;->c:I

    .line 90
    iput-boolean p8, p0, Lacy;->b:Z

    .line 91
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 296
    const-string/jumbo v1, "\u672a\u77e5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-static {p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-static {p2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lacy;->x:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lacy;->y:Z

    .line 99
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lacy;->B:Z

    .line 103
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lacy;->z:Z

    .line 107
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lacy;->w:Labx;

    invoke-virtual {v1}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lacy;->t:Ljava/lang/String;

    iget-object v3, p0, Lacy;->u:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "location":Ljava/lang/String;
    iput-object v0, p0, Lacy;->d:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lacy;->t:Ljava/lang/String;

    iput-object v1, p0, Lacy;->e:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lacy;->u:Ljava/lang/String;

    iput-object v1, p0, Lacy;->f:Ljava/lang/String;

    .line 185
    iget v1, p0, Lacy;->c:I

    iput v1, p0, Lacy;->i:I

    .line 186
    iget-boolean v1, p0, Lacy;->a:Z

    iput-boolean v1, p0, Lacy;->g:Z

    .line 187
    iget-object v1, p0, Lacy;->v:Ljava/lang/String;

    iput-object v1, p0, Lacy;->h:Ljava/lang/String;

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lacy;->j:Z

    .line 189
    iget-boolean v1, p0, Lacy;->y:Z

    iput-boolean v1, p0, Lacy;->k:Z

    .line 192
    iget-boolean v1, p0, Lacy;->y:Z

    if-eqz v1, :cond_0

    .line 194
    iget-boolean v1, p0, Lacy;->C:Z

    iput-boolean v1, p0, Lacy;->l:Z

    .line 195
    iget-boolean v1, p0, Lacy;->z:Z

    iput-boolean v1, p0, Lacy;->m:Z

    .line 196
    iget-boolean v1, p0, Lacy;->B:Z

    iput-boolean v1, p0, Lacy;->n:Z

    .line 197
    iget-boolean v1, p0, Lacy;->A:Z

    iput-boolean v1, p0, Lacy;->o:Z

    .line 198
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_FLAG_SHOW_SHARE_AFTER_SMS_SEND"

    .line 199
    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lacy;->p:Z

    .line 203
    :cond_0
    iget-boolean v1, p0, Lacy;->b:Z

    iput-boolean v1, p0, Lacy;->q:Z

    .line 204
    iget-object v1, p0, Lacy;->x:Ljava/lang/String;

    iput-object v1, p0, Lacy;->r:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public d(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lacy;->A:Z

    .line 111
    return-void
.end method

.method public e(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lacy;->C:Z

    .line 115
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "args":Lorg/json/JSONArray;
    const-string/jumbo v7, "resend"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    sget-object v7, Lacy;->s:Ljava/lang/String;

    const-string/jumbo v8, "resend"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v7, 0x1

    invoke-static {v7}, Labd;->a(Z)V

    .line 217
    sget-object v7, Lcom/iflytek/framework/business/speech/InteractionScene;->sms_content:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static {v7}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 218
    iget-object v7, p0, Lacy;->D:Landroid/content/Context;

    const-string/jumbo v8, "action_send_message_to_special"

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lacy;->t:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lacy;->u:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 278
    .end local v0    # "args":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 222
    .restart local v0    # "args":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v7, "opRecoCall"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 223
    sget-object v7, Lacy;->s:Ljava/lang/String;

    const-string/jumbo v8, "opRecoCall"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "tel":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 228
    .local v2, "isDefault":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 229
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v6}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v7, "true"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 232
    sget-object v7, Lacy;->s:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "----->>isDefault: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v7

    const-string/jumbo v8, "FD02019"

    invoke-virtual {v7, v8}, Labu;->a(Ljava/lang/String;)V

    .line 239
    :cond_2
    :goto_1
    invoke-static {}, Laba;->a()Laba;

    move-result-object v7

    invoke-virtual {v7}, Laba;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 241
    iget-object v7, p0, Lacy;->D:Landroid/content/Context;

    const-string/jumbo v8, "call"

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v7, v8, v9, v10}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 275
    .end local v0    # "args":Lorg/json/JSONArray;
    .end local v2    # "isDefault":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "tel":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Lorg/json/JSONException;
    sget-object v7, Lacy;->s:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "args":Lorg/json/JSONArray;
    .restart local v2    # "isDefault":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "tel":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v7, "false"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 235
    sget-object v7, Lacy;->s:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "----->>isDefault: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v7

    const-string/jumbo v8, "FD02020"

    invoke-virtual {v7, v8}, Labu;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_4
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v7

    invoke-virtual {v7, v6}, Lgx;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v2    # "isDefault":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "tel":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "opRecoSmsSubPage"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 253
    sget-object v7, Lacy;->s:Ljava/lang/String;

    const-string/jumbo v8, "opRecoSmsSubPage"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v7

    const-string/jumbo v8, "recent_contact_send_msg"

    invoke-virtual {v7, v8}, Lwx;->a(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 258
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    .restart local v4    # "name":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 260
    .restart local v6    # "tel":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u53d1\u77ed\u4fe1\u7ed9"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "rawtext":Ljava/lang/String;
    iget-object v7, p0, Lacy;->w:Labx;

    sget-object v8, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-virtual {v7, v8}, Labx;->Cancel(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)Z

    .line 266
    iget-object v7, p0, Lacy;->D:Landroid/content/Context;

    const-string/jumbo v8, "action_send_message_to_special"

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v7, v8, v9, v10}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 270
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rawtext":Ljava/lang/String;
    .end local v6    # "tel":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "setIsNotShowAgain"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_FLAG_SHOW_SHARE_AFTER_SMS_SEND"

    .line 272
    invoke-virtual {v7, v8}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    .line 273
    .local v3, "isNotShowAgain":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_FLAG_SHOW_SHARE_AFTER_SMS_SEND"

    if-nez v3, :cond_7

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v9, v7}, Lil;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 128
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "LatestSmsView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 283
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lacy;->w:Labx;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lacy;->w:Labx;

    invoke-virtual {v0}, Labx;->isHistoryResult()Z

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 134
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v1, "jsonItem":Lorg/json/JSONObject;
    iget-object v3, p0, Lacy;->w:Labx;

    invoke-virtual {v3}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lacy;->t:Ljava/lang/String;

    iget-object v5, p0, Lacy;->u:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "location":Ljava/lang/String;
    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lacy;->t:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v3, "tel"

    iget-object v4, p0, Lacy;->u:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v3, "mobile"

    iget-boolean v4, p0, Lacy;->a:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v3, "time"

    iget-object v4, p0, Lacy;->v:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v3, "type"

    iget v4, p0, Lacy;->c:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v3, "isScrollToPreviousElement"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v3, "isReceiverCardFlag"

    iget-boolean v4, p0, Lacy;->y:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    iget-boolean v3, p0, Lacy;->y:Z

    if-eqz v3, :cond_0

    .line 146
    const-string/jumbo v3, "isHaveQZoneFlag"

    iget-boolean v4, p0, Lacy;->C:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v3, "isHaveWeChatFlag"

    iget-boolean v4, p0, Lacy;->z:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v3, "isHaveWeiboFlag"

    iget-boolean v4, p0, Lacy;->B:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v3, "isHaveFriendCircleFlag"

    iget-boolean v4, p0, Lacy;->A:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v3, "isNotShowAgain"

    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_FLAG_SHOW_SHARE_AFTER_SMS_SEND"

    .line 151
    invoke-virtual {v4, v5}, Lil;->c(Ljava/lang/String;)Z

    move-result v4

    .line 150
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 153
    :cond_0
    const-string/jumbo v3, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v3, "muiltNumber"

    iget-boolean v4, p0, Lacy;->b:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v3, "focus"

    iget-object v4, p0, Lacy;->x:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v3, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v3, "trace"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "jsonItem":Lorg/json/JSONObject;
    .end local v2    # "location":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lacy;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    goto :goto_0
.end method

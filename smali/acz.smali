.class public Lacz;
.super Ljava/lang/Object;
.source "WidgetCallView.java"

# interfaces
.implements Lacf$a;
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Lcom/iflytek/common/adaptation/entity/SimCard;

.field public k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/lang/Runnable;

.field private n:Lacp;

.field private o:B

.field private p:Lcom/iflytek/base/contacts/entities/ContactSet;

.field private q:Landroid/content/Context;

.field private r:J

.field private s:J

.field private t:Lcom/iflytek/common/adaptation/entity/SimCard;

.field private u:Z

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lacp;Lcom/iflytek/base/contacts/entities/ContactSet;JLcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "resultHandler"    # Lacp;
    .param p2, "contactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p3, "proDelayedTime"    # J
    .param p5, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v0, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 48
    iput-boolean v2, p0, Lacz;->u:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lacz;->v:Landroid/os/Handler;

    .line 52
    iput-boolean v2, p0, Lacz;->a:Z

    .line 67
    new-instance v0, Lacz$1;

    invoke-direct {v0, p0}, Lacz$1;-><init>(Lacz;)V

    iput-object v0, p0, Lacz;->m:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lacz;->n:Lacp;

    .line 85
    iget-object v0, p0, Lacz;->n:Lacp;

    invoke-interface {v0}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lacz;->n:Lacp;

    invoke-interface {v0}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    invoke-virtual {v0}, Lacf;->j()B

    move-result v0

    iput-byte v0, p0, Lacz;->o:B

    .line 88
    :cond_0
    iput-object p5, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 89
    iput-wide p3, p0, Lacz;->r:J

    .line 90
    invoke-interface {p1}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lacz;->q:Landroid/content/Context;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lacz;->s:J

    .line 92
    invoke-virtual {p0, p2}, Lacz;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 94
    iget-object v0, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacz;->a:Z

    .line 100
    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v0, v1}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 102
    return-void

    .line 97
    :cond_1
    invoke-static {}, Laba;->a()Laba;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v0

    iput-object v0, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method static synthetic a(Lacz;)Z
    .locals 1
    .param p0, "x0"    # Lacz;

    .prologue
    .line 38
    iget-boolean v0, p0, Lacz;->u:Z

    return v0
.end method

.method static synthetic b(Lacz;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 1
    .param p0, "x0"    # Lacz;

    .prologue
    .line 38
    iget-object v0, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    return-object v0
.end method

.method static synthetic c(Lacz;)Lacp;
    .locals 1
    .param p0, "x0"    # Lacz;

    .prologue
    .line 38
    iget-object v0, p0, Lacz;->n:Lacp;

    return-object v0
.end method

.method static synthetic d(Lacz;)B
    .locals 1
    .param p0, "x0"    # Lacz;

    .prologue
    .line 38
    iget-byte v0, p0, Lacz;->o:B

    return v0
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .param p1, "pTime"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lacz;->s:J

    .line 106
    iget-object v0, p0, Lacz;->v:Landroid/os/Handler;

    iget-object v1, p0, Lacz;->m:Ljava/lang/Runnable;

    iget-wide v2, p0, Lacz;->s:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

.method public a(Lcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 0
    .param p1, "contactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 114
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
    .locals 1
    .param p1, "pReason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacz;->u:Z

    .line 404
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v6, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "contactIconUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 268
    const-string/jumbo v0, ""

    .line 271
    :cond_0
    iget-object v6, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "contactName":Ljava/lang/String;
    iget-object v6, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 273
    .local v4, "phoneNumber":Ljava/lang/String;
    iget-object v6, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-nez v6, :cond_1

    .line 274
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6, v4}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v6

    iput-object v6, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 277
    :cond_1
    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v2

    .line 279
    .local v2, "isCellPhone":Z
    const/4 v3, 0x0

    .line 281
    .local v3, "isShowSimName":Z
    iput-object v1, p0, Lacz;->b:Ljava/lang/String;

    .line 282
    iput-object v4, p0, Lacz;->c:Ljava/lang/String;

    .line 283
    iget-object v6, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6, v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lacz;->d:Ljava/lang/String;

    .line 284
    iput-boolean v2, p0, Lacz;->e:Z

    .line 285
    iput-object v0, p0, Lacz;->f:Ljava/lang/String;

    .line 286
    iget-wide v6, p0, Lacz;->r:J

    iput-wide v6, p0, Lacz;->g:J

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lacz;->h:Ljava/lang/String;

    .line 288
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->b()Z

    move-result v6

    iput-boolean v6, p0, Lacz;->i:Z

    .line 289
    iget-object v6, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v6, p0, Lacz;->j:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 292
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 294
    invoke-static {v6}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v6

    const-string/jumbo v7, "FD01005"

    const-string/jumbo v8, "tss_click_lc"

    .line 297
    invoke-virtual {v6, v7, v8}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v6, v7}, Lil;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 305
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lacz;->k:Z

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lacz;->l:Ljava/util/List;

    .line 307
    iget-object v5, p0, Lacz;->l:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    iget-object v7, p0, Lacz;->q:Landroid/content/Context;

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7, v8, v3}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v5, p0, Lacz;->l:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    iget-object v7, p0, Lacz;->q:Landroid/content/Context;

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7, v8, v3}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void

    :cond_3
    move v3, v5

    .line 302
    goto :goto_0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    const-string/jumbo v3, "other"

    .line 119
    .local v3, "focus":Ljava/lang/String;
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v4

    invoke-virtual {v4}, Lacf;->g()Ljava/lang/String;

    move-result-object v3

    .line 122
    :cond_0
    const-string/jumbo v4, "cancelCall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "cancel"

    iget-byte v6, p0, Lacz;->o:B

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v4, v5, v6, v7}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 128
    iput-boolean v10, p0, Lacz;->u:Z

    .line 129
    iget-object v4, p0, Lacz;->q:Landroid/content/Context;

    invoke-static {v4}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v4

    invoke-virtual {v4}, Lbbp;->c()V

    .line 247
    :cond_1
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    :goto_1
    return-object v4

    .line 139
    :cond_2
    const-string/jumbo v4, "callOut"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    invoke-virtual {v4}, Laba;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, "card":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "args":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 146
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :cond_3
    if-eqz v1, :cond_7

    const-string/jumbo v4, "card1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 154
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v4, v5, :cond_4

    .line 157
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 156
    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "FD01005"

    const-string/jumbo v6, "sss_click_lc"

    .line 159
    invoke-virtual {v4, v5, v6}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Labb;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 164
    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "FD01018"

    const-string/jumbo v6, "bubble_callout"

    .line 167
    invoke-virtual {v4, v5, v6}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4
    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v4, v5}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 175
    const-string/jumbo v4, "WidgetCallView"

    const-string/jumbo v5, "[exec] callOut by card1"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "call"

    iget-byte v6, p0, Lacz;->o:B

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 178
    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v12, v7, v10

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v8, v7, v11

    .line 176
    invoke-static {v4, v5, v6, v7}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 180
    iput-boolean v10, p0, Lacz;->u:Z

    .line 182
    iget-boolean v4, p0, Lacz;->a:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v4, v5, :cond_6

    .line 183
    :cond_5
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v4, v6}, Laba;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 232
    :cond_6
    :goto_2
    invoke-static {v9}, Labb;->d(Z)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "args":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "WidgetCallView"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "JSON error"

    const-string/jumbo v6, ""

    invoke-direct {v4, v5, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "args":Lorg/json/JSONArray;
    :cond_7
    if-eqz v1, :cond_a

    const-string/jumbo v4, "card2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 186
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v4, v5, :cond_8

    .line 189
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 188
    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "FD01005"

    const-string/jumbo v6, "sss_click_lc"

    .line 191
    invoke-virtual {v4, v5, v6}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Labb;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 197
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 196
    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "FD01018"

    const-string/jumbo v6, "bubble_callout"

    .line 199
    invoke-virtual {v4, v5, v6}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_8
    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v4, v5}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 208
    const-string/jumbo v4, "WidgetCallView"

    const-string/jumbo v5, "[exec] callOut by card2"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "call"

    iget-byte v6, p0, Lacz;->o:B

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 211
    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v12, v7, v10

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v8, v7, v11

    .line 209
    invoke-static {v4, v5, v6, v7}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 212
    iput-boolean v10, p0, Lacz;->u:Z

    .line 215
    iget-boolean v4, p0, Lacz;->a:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v4, v5, :cond_6

    .line 216
    :cond_9
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v4, v6}, Laba;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_2

    .line 220
    :cond_a
    const-string/jumbo v4, "WidgetCallView"

    const-string/jumbo v5, "[exec] callOut by default card"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 222
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "call"

    iget-byte v6, p0, Lacz;->o:B

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 224
    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v8, v7, v10

    .line 222
    invoke-static {v4, v5, v6, v7}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 230
    :goto_3
    iput-boolean v10, p0, Lacz;->u:Z

    goto/16 :goto_2

    .line 226
    :cond_b
    const-string/jumbo v4, "WidgetCallView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MethodName: exec data: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " info: phonenumber list is empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 234
    .end local v0    # "args":Lorg/json/JSONArray;
    .end local v1    # "card":Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 235
    iget-object v4, p0, Lacz;->n:Lacp;

    invoke-interface {v4}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "call"

    iget-byte v6, p0, Lacz;->o:B

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 237
    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v9

    .line 235
    invoke-static {v4, v5, v6, v7}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 244
    :goto_4
    iput-boolean v10, p0, Lacz;->u:Z

    goto/16 :goto_0

    .line 239
    :cond_d
    const-string/jumbo v4, "WidgetCallView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MethodName: exec data: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " info: phonenumber list is empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 259
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string/jumbo v0, "WidgetCallView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 252
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 312
    iget-object v10, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "contactIconUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 314
    const-string/jumbo v0, ""

    .line 317
    :cond_0
    iget-object v10, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "contactName":Ljava/lang/String;
    iget-object v10, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 319
    .local v8, "phoneNumber":Ljava/lang/String;
    iget-object v10, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-nez v10, :cond_1

    .line 320
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10, v8}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v10

    iput-object v10, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 323
    :cond_1
    invoke-static {v8}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v3

    .line 325
    .local v3, "isCellPhone":Z
    const/4 v6, 0x0

    .line 327
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 328
    .local v5, "jsonArray_SimName":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 329
    .local v4, "isShowSimName":Z
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v10, "tel"

    invoke-virtual {v7, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string/jumbo v10, "location"

    iget-object v11, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v11, v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v10, "mobile"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v10, "icon"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string/jumbo v10, "delayedtime"

    iget-wide v12, p0, Lacz;->r:J

    invoke-virtual {v7, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 336
    const-string/jumbo v10, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string/jumbo v10, "isDoubleSim"

    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    invoke-virtual {v11}, Laba;->b()Z

    move-result v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 338
    const-string/jumbo v10, "defaultSim"

    iget-object v11, p0, Lacz;->t:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->b()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 342
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    .line 343
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 341
    invoke-static {v10}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v10

    const-string/jumbo v11, "FD01005"

    const-string/jumbo v12, "tss_click_lc"

    .line 344
    invoke-virtual {v10, v11, v12}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v10, v11}, Lil;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 349
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->g()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    .line 351
    :goto_0
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    iget-object v10, p0, Lacz;->q:Landroid/content/Context;

    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v9, v10, v11, v4}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 352
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    iget-object v10, p0, Lacz;->q:Landroid/content/Context;

    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v9, v10, v11, v4}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 356
    :cond_2
    const-string/jumbo v9, "isShowSimName"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 357
    const-string/jumbo v9, "SimNameList"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    iput-object v1, p0, Lacz;->b:Ljava/lang/String;

    .line 360
    iput-object v8, p0, Lacz;->c:Ljava/lang/String;

    .line 361
    iget-object v9, p0, Lacz;->p:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v9, v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lacz;->d:Ljava/lang/String;

    .line 362
    iput-boolean v3, p0, Lacz;->e:Z

    .line 363
    iput-object v0, p0, Lacz;->f:Ljava/lang/String;

    .line 364
    iget-wide v10, p0, Lacz;->r:J

    iput-wide v10, p0, Lacz;->g:J

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lacz;->h:Ljava/lang/String;

    .line 366
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9}, Laba;->b()Z

    move-result v9

    iput-boolean v9, p0, Lacz;->i:Z

    .line 367
    iput-boolean v4, p0, Lacz;->k:Z

    .line 368
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lacz;->l:Ljava/util/List;

    .line 369
    iget-object v9, p0, Lacz;->l:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    iget-object v11, p0, Lacz;->q:Landroid/content/Context;

    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v10, v11, v12, v4}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v9, p0, Lacz;->l:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    iget-object v11, p0, Lacz;->q:Landroid/content/Context;

    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v10, v11, v12, v4}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v7

    .line 380
    .end local v4    # "isShowSimName":Z
    .end local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v6

    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "isShowSimName":Z
    .restart local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    move v4, v9

    .line 349
    goto :goto_0

    .line 373
    .end local v4    # "isShowSimName":Z
    .end local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 375
    const/4 v6, 0x0

    .line 379
    goto :goto_1

    .line 376
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const/4 v6, 0x0

    goto :goto_1

    .line 376
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "isShowSimName":Z
    .restart local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 373
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2
.end method

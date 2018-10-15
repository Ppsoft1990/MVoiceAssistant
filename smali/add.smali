.class public Ladd;
.super Ljava/lang/Object;
.source "WidgetPhoneListView.java"

# interfaces
.implements Lacf$a;
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/iflytek/common/adaptation/entity/SimCard;

.field a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public i:J

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ">;"
        }
    .end annotation
.end field

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

.field private n:Landroid/content/Context;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:[Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lacp;

.field private w:B

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Ladb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ladd;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lacp;Ljava/util/List;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/lang/String;JLcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 5
    .param p1, "resultHandler"    # Lacp;
    .param p3, "contactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p4, "pTargetNumber"    # Ljava/lang/String;
    .param p5, "delayedtime"    # J
    .param p7, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lacp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            "Ljava/lang/String;",
            "J",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v1, ""

    iput-object v1, p0, Ladd;->u:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Ladd;->y:Ljava/lang/String;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Ladd;->A:I

    .line 57
    iput-boolean v3, p0, Ladd;->B:Z

    .line 60
    iput-boolean v3, p0, Ladd;->a:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->f:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->g:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->h:Ljava/util/List;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->k:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->l:Ljava/util/List;

    .line 79
    iput-object p1, p0, Ladd;->v:Lacp;

    .line 80
    iget-object v1, p0, Ladd;->v:Lacp;

    invoke-interface {v1}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Ladd;->v:Lacp;

    invoke-interface {v1}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v1

    invoke-virtual {v1}, Lacf;->j()B

    move-result v1

    iput-byte v1, p0, Ladd;->w:B

    .line 83
    :cond_0
    iput-wide p5, p0, Ladd;->z:J

    .line 84
    invoke-interface {p1}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ladd;->n:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Ladd;->o:Ljava/util/List;

    .line 86
    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ladd;->t:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Ladd;->y:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 89
    iget-object v1, p0, Ladd;->y:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 91
    :try_start_0
    iget-object v1, p0, Ladd;->t:Ljava/lang/String;

    .line 92
    invoke-static {v1}, Lhc;->a(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    iput-object v1, p0, Ladd;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ladd;->u:Ljava/lang/String;

    .line 100
    :cond_2
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ladd;->x:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->p:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->q:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladd;->r:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Ladd;->h()V

    .line 106
    iget-object v1, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eqz v1, :cond_3

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Ladd;->a:Z

    .line 112
    :goto_1
    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v1, v2}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 114
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Ladd;->y:Ljava/lang/String;

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Laba;->a()Laba;

    move-result-object v2

    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v1

    iput-object v1, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_1
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 146
    iget-object v5, p0, Ladd;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Z

    iput-object v5, p0, Ladd;->s:[Z

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ladd;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 148
    iget-object v5, p0, Ladd;->o:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, "item":Ljava/lang/String;
    const-string/jumbo v5, "`"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "arr":[Ljava/lang/String;
    iget-object v5, p0, Ladd;->p:Ljava/util/List;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v5, p0, Ladd;->q:Ljava/util/List;

    aget-object v6, v0, v8

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    aget-object v5, v0, v8

    const-string/jumbo v6, "&"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "tempNum":Ljava/lang/String;
    const-string/jumbo v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 155
    .local v3, "phonePre":I
    if-lez v3, :cond_0

    .line 156
    iget-object v5, p0, Ladd;->r:Ljava/util/List;

    const-string/jumbo v6, "^"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v5, p0, Ladd;->s:[Z

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v5, v1

    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v5, p0, Ladd;->r:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v5, p0, Ladd;->s:[Z

    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v5, v1

    goto :goto_1

    .line 163
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "phonePre":I
    .end local v4    # "tempNum":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Ladd;->y:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 164
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Ladd;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 165
    iget-object v5, p0, Ladd;->y:Ljava/lang/String;

    iget-object v6, p0, Ladd;->r:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iput v1, p0, Ladd;->A:I

    .line 164
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Ladd;->A:I

    return v0
.end method

.method public a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
    .locals 1
    .param p1, "pReason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladd;->B:Z

    .line 471
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ladd;->t:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ladd;->u:Ljava/lang/String;

    return-object v0
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 9

    .prologue
    .line 424
    invoke-virtual {p0}, Ladd;->e()Ljava/util/List;

    move-result-object v3

    .line 425
    .local v3, "markedPhoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ladd;->d()Ljava/util/List;

    move-result-object v4

    .line 426
    .local v4, "phoneTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ladd;->f()[Z

    move-result-object v1

    .line 427
    .local v1, "isCellPhone":[Z
    const/4 v2, 0x0

    .line 429
    .local v2, "isShowSimName":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 430
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v5, p0, Ladd;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v5, p0, Ladd;->h:Ljava/util/List;

    aget-boolean v6, v1, v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v5, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-nez v5, :cond_0

    .line 434
    iget-object v6, p0, Ladd;->k:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v5, p0, Ladd;->k:Ljava/util/List;

    iget-object v6, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    :cond_1
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5}, Laba;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v5, v6}, Lil;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 442
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5}, Laba;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 444
    :goto_2
    iget-object v5, p0, Ladd;->l:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    iget-object v7, p0, Ladd;->n:Landroid/content/Context;

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7, v8, v2}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v5, p0, Ladd;->l:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    iget-object v7, p0, Ladd;->n:Landroid/content/Context;

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7, v8, v2}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_2
    invoke-virtual {p0}, Ladd;->a()I

    move-result v5

    iput v5, p0, Ladd;->b:I

    .line 449
    invoke-virtual {p0}, Ladd;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ladd;->c:Ljava/lang/String;

    .line 450
    invoke-virtual {p0}, Ladd;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ladd;->d:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Ladd;->g()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ladd;->e:Ljava/lang/String;

    .line 452
    iget-wide v6, p0, Ladd;->z:J

    iput-wide v6, p0, Ladd;->i:J

    .line 454
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5}, Laba;->b()Z

    move-result v5

    iput-boolean v5, p0, Ladd;->j:Z

    .line 457
    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5}, Laba;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 460
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    .line 461
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 459
    invoke-static {v5}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v5

    const-string/jumbo v6, "FD01005"

    const-string/jumbo v7, "tss_click_lc"

    .line 462
    invoke-virtual {v5, v6, v7}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_3
    return-void

    .line 442
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ladd;->p:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Ladd;->q:Ljava/util/List;

    return-object v0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v9, Ladd;->m:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exec start, aciton is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,args is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 175
    sget-object v9, Ladd;->m:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mContext == null... exec start, aciton is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,args is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v9, 0x0

    .line 320
    :goto_0
    return-object v9

    .line 178
    :cond_0
    iget-boolean v9, p0, Ladd;->B:Z

    if-eqz v9, :cond_1

    .line 180
    const/4 v9, 0x0

    goto :goto_0

    .line 183
    :cond_1
    const-string/jumbo v9, "phoneItemClick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 187
    const/4 v2, 0x0

    .line 189
    .local v2, "card":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "args":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "targetId":Ljava/lang/String;
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9}, Laba;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 192
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    :cond_2
    if-nez v8, :cond_3

    .line 199
    new-instance v9, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v10, "OK"

    const-string/jumbo v11, "item id is null"

    invoke-direct {v9, v10, v11}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v1    # "args":Lorg/json/JSONArray;
    .end local v8    # "targetId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Lorg/json/JSONException;
    sget-object v9, Ladd;->m:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v9, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v10, "JSON error"

    const-string/jumbo v11, ""

    invoke-direct {v9, v10, v11}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v1    # "args":Lorg/json/JSONArray;
    .restart local v8    # "targetId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "phoneItem"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "strs":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    if-eqz v9, :cond_4

    array-length v9, v7

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    .line 203
    :cond_4
    new-instance v9, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v10, "OK"

    const-string/jumbo v11, "item id is null"

    invoke-direct {v9, v10, v11}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_5
    sget-object v9, Ladd;->m:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "touch item id is *"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 207
    .local v6, "itemID":I
    iget-object v9, p0, Ladd;->r:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, "contactNumber":Ljava/lang/String;
    sget-object v9, Ladd;->m:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "----------------------->>>contactNumber:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v9, Ladd;->m:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "----------------------->>>defaultNum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ladd;->y:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v9, p0, Ladd;->x:Ljava/lang/String;

    const-string/jumbo v10, "telephone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 211
    iget-object v9, p0, Ladd;->y:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 212
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "FD02021"

    invoke-virtual {v9, v10}, Labu;->a(Ljava/lang/String;)V

    .line 220
    :cond_6
    :goto_1
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9}, Laba;->b()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 221
    if-eqz v2, :cond_c

    const-string/jumbo v9, "card1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 222
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9, v3}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v9

    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v9, v10, :cond_7

    .line 225
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    .line 226
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 224
    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "FD01005"

    const-string/jumbo v11, "sss_click_lc"

    .line 227
    invoke-virtual {v9, v10, v11}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_7
    sget-object v9, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v3, v9}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 240
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "select_contact_number"

    iget-byte v11, p0, Ladd;->w:B

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "telephone"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v12}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 244
    iget-boolean v9, p0, Ladd;->a:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v9, v10, :cond_9

    .line 245
    :cond_8
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v9, v3, v10}, Laba;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 287
    :cond_9
    :goto_2
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    iget-object v10, p0, Ladd;->t:Ljava/lang/String;

    invoke-static {v9, v10, v3}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v1    # "args":Lorg/json/JSONArray;
    .end local v2    # "card":Ljava/lang/String;
    .end local v3    # "contactNumber":Ljava/lang/String;
    .end local v6    # "itemID":I
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "targetId":Ljava/lang/String;
    :cond_a
    :goto_3
    new-instance v9, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v9}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 214
    .restart local v1    # "args":Lorg/json/JSONArray;
    .restart local v2    # "card":Ljava/lang/String;
    .restart local v3    # "contactNumber":Ljava/lang/String;
    .restart local v6    # "itemID":I
    .restart local v7    # "strs":[Ljava/lang/String;
    .restart local v8    # "targetId":Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Ladd;->x:Ljava/lang/String;

    const-string/jumbo v10, "message"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 215
    iget-object v9, p0, Ladd;->y:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 216
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "FD02022"

    invoke-virtual {v9, v10}, Labu;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :cond_c
    if-eqz v2, :cond_f

    const-string/jumbo v9, "card2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 248
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9, v3}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v9

    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v9, v10, :cond_d

    .line 251
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    .line 252
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 250
    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "FD01005"

    const-string/jumbo v11, "sss_click_lc"

    .line 253
    invoke-virtual {v9, v10, v11}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_d
    sget-object v9, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v3, v9}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 266
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "select_contact_number"

    iget-byte v11, p0, Ladd;->w:B

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "telephone"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v12}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 270
    iget-boolean v9, p0, Ladd;->a:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eq v9, v10, :cond_9

    .line 271
    :cond_e
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v9, v3, v10}, Laba;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_2

    .line 276
    :cond_f
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "select_contact_number"

    iget-byte v11, p0, Ladd;->w:B

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "telephone"

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v12}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 283
    :cond_10
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "select_contact_number"

    iget-byte v11, p0, Ladd;->w:B

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "telephone"

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v12}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 288
    .end local v1    # "args":Lorg/json/JSONArray;
    .end local v2    # "card":Ljava/lang/String;
    .end local v3    # "contactNumber":Ljava/lang/String;
    .end local v6    # "itemID":I
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "targetId":Ljava/lang/String;
    :cond_11
    const-string/jumbo v9, "cancel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 289
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v9

    sget-object v10, Lcom/iflytek/framework/business/speech/InteractionScene;->select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-eq v9, v10, :cond_a

    .line 290
    const/4 v9, 0x0

    invoke-static {v9}, Labb;->a(Z)V

    .line 292
    const-string/jumbo v5, "other"

    .line 293
    .local v5, "focus":Ljava/lang/String;
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 294
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v9

    invoke-virtual {v9}, Lacf;->g()Ljava/lang/String;

    move-result-object v5

    .line 297
    :cond_12
    iget-object v9, p0, Ladd;->v:Lacp;

    invoke-interface {v9}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "cancel"

    iget-byte v11, p0, Ladd;->w:B

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v9, v10, v11, v12}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 301
    iget-object v9, p0, Ladd;->x:Ljava/lang/String;

    const-string/jumbo v10, "telephone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 302
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "FD02023"

    invoke-virtual {v9, v10}, Labu;->a(Ljava/lang/String;)V

    .line 308
    :cond_13
    :goto_4
    sget-object v9, Ladd;->m:Ljava/lang/String;

    const-string/jumbo v10, "cancel button down"

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    invoke-static {v9}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v9

    invoke-virtual {v9}, Lbbp;->c()V

    goto/16 :goto_3

    .line 303
    :cond_14
    iget-object v9, p0, Ladd;->x:Ljava/lang/String;

    const-string/jumbo v10, "message"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 304
    iget-object v9, p0, Ladd;->n:Landroid/content/Context;

    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "FD02024"

    invoke-virtual {v9, v10}, Labu;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public f()[Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ladd;->s:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ladd;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 335
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string/jumbo v0, "WidgetPhoneListView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 326
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 18

    .prologue
    .line 340
    const/4 v11, 0x0

    .line 342
    .local v11, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .local v12, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 344
    .local v10, "jsonArray_phoneTag":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 345
    .local v9, "jsonArray_phoneMarkedNum":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 346
    .local v8, "jsonArray_isCellPhone":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 347
    .local v7, "jsonArray_defaultSim":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 349
    .local v6, "jsonArray_SimName":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p0}, Ladd;->e()Ljava/util/List;

    move-result-object v13

    .line 350
    .local v13, "markedPhoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ladd;->d()Ljava/util/List;

    move-result-object v14

    .line 351
    .local v14, "phoneTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ladd;->f()[Z

    move-result-object v4

    .line 352
    .local v4, "isCellPhone":[Z
    const/4 v5, 0x0

    .line 354
    .local v5, "isShowSimName":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_1

    .line 355
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 356
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 357
    aget-boolean v15, v4, v3

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-nez v15, :cond_0

    .line 359
    invoke-static {}, Laba;->a()Laba;

    move-result-object v16

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 354
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Ladd;->C:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 397
    .end local v3    # "i":I
    .end local v4    # "isCellPhone":[Z
    .end local v5    # "isShowSimName":Z
    .end local v6    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v7    # "jsonArray_defaultSim":Lorg/json/JSONArray;
    .end local v8    # "jsonArray_isCellPhone":Lorg/json/JSONArray;
    .end local v9    # "jsonArray_phoneMarkedNum":Lorg/json/JSONArray;
    .end local v10    # "jsonArray_phoneTag":Lorg/json/JSONArray;
    .end local v13    # "markedPhoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "phoneTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v11, v12

    .line 398
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "e":Lorg/json/JSONException;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 399
    const/4 v11, 0x0

    .line 404
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    return-object v11

    .line 364
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    .restart local v4    # "isCellPhone":[Z
    .restart local v5    # "isShowSimName":Z
    .restart local v6    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v7    # "jsonArray_defaultSim":Lorg/json/JSONArray;
    .restart local v8    # "jsonArray_isCellPhone":Lorg/json/JSONArray;
    .restart local v9    # "jsonArray_phoneMarkedNum":Lorg/json/JSONArray;
    .restart local v10    # "jsonArray_phoneTag":Lorg/json/JSONArray;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "markedPhoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "phoneTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v15

    invoke-virtual {v15}, Laba;->b()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 365
    invoke-static {}, Lil;->a()Lil;

    move-result-object v15

    const-string/jumbo v16, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual/range {v15 .. v16}, Lil;->c(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 366
    invoke-static {}, Laba;->a()Laba;

    move-result-object v15

    invoke-virtual {v15}, Laba;->g()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v5, 0x1

    .line 368
    :goto_4
    invoke-static {}, Laba;->a()Laba;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ladd;->n:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v5}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 369
    invoke-static {}, Laba;->a()Laba;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ladd;->n:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v5}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 372
    :cond_2
    const-string/jumbo v15, "defaultItem"

    invoke-virtual/range {p0 .. p0}, Ladd;->a()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    const-string/jumbo v15, "phoneViewIcon"

    invoke-virtual/range {p0 .. p0}, Ladd;->c()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string/jumbo v15, "phoneViewTitle"

    invoke-virtual/range {p0 .. p0}, Ladd;->b()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string/jumbo v15, "phoneViewFocus"

    invoke-virtual/range {p0 .. p0}, Ladd;->g()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string/jumbo v15, "phoneNumList"

    invoke-virtual {v12, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string/jumbo v15, "phoneTagList"

    invoke-virtual {v12, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string/jumbo v15, "phoneFlagList"

    invoke-virtual {v12, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string/jumbo v15, "delayedtime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ladd;->z:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 381
    const-string/jumbo v15, "isDoubleSim"

    invoke-static {}, Laba;->a()Laba;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laba;->b()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 382
    const-string/jumbo v15, "defaultSimList"

    invoke-virtual {v12, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string/jumbo v15, "isShowSimName"

    invoke-virtual {v12, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 385
    const-string/jumbo v15, "SimNameList"

    invoke-virtual {v12, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v15, "taskHandler"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-static {}, Laba;->a()Laba;

    move-result-object v15

    invoke-virtual {v15}, Laba;->b()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 391
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v15

    .line 392
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 390
    invoke-static {v15}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v15

    const-string/jumbo v16, "FD01005"

    const-string/jumbo v17, "tss_click_lc"

    .line 393
    invoke-virtual/range {v15 .. v17}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v11, v12

    .line 403
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 366
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 400
    .end local v3    # "i":I
    .end local v4    # "isCellPhone":[Z
    .end local v5    # "isShowSimName":Z
    .end local v6    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v7    # "jsonArray_defaultSim":Lorg/json/JSONArray;
    .end local v8    # "jsonArray_isCellPhone":Lorg/json/JSONArray;
    .end local v9    # "jsonArray_phoneMarkedNum":Lorg/json/JSONArray;
    .end local v10    # "jsonArray_phoneTag":Lorg/json/JSONArray;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "markedPhoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "phoneTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 400
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v11, v12

    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_5

    .line 397
    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

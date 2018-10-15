.class public Labb;
.super Ljava/lang/Object;
.source "TelSmsBlackboard.java"


# static fields
.field private static A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Lcom/iflytek/common/adaptation/entity/SimCard;

.field private static C:Z

.field private static D:Z

.field private static E:I

.field private static F:J

.field private static G:Landroid/content/Context;

.field private static H:Ladp;

.field private static I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;

.field private static b:Lcom/iflytek/base/contacts/entities/ContactInfo;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:Ljava/lang/String;

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Lcom/iflytek/base/contacts/entities/ContactInfo;

.field private static n:Lade;

.field private static o:Ladf;

.field private static p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Z

.field private static u:Lcom/iflytek/base/contacts/entities/ContactSet;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:I

.field private static y:Z

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const-string/jumbo v0, ""

    sput-object v0, Labb;->h:Ljava/lang/String;

    .line 50
    sput-object v4, Labb;->i:Ljava/lang/String;

    .line 76
    sput-boolean v2, Labb;->q:Z

    .line 78
    sput-boolean v2, Labb;->r:Z

    .line 80
    sput-boolean v3, Labb;->s:Z

    .line 82
    sput-boolean v2, Labb;->t:Z

    .line 88
    const-string/jumbo v0, "homepage"

    sput-object v0, Labb;->v:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "\u4ece\u5bb9\u751f\u6d3b\uff0c\u4ece\u7075\u7280\u5f00\u59cb"

    sput-object v0, Labb;->a:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Labb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labb;->w:Ljava/lang/String;

    .line 113
    const/16 v0, 0xbb8

    sput v0, Labb;->x:I

    .line 121
    sput-boolean v3, Labb;->y:Z

    .line 123
    sput-object v4, Labb;->z:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Labb;->A:Ljava/util/ArrayList;

    .line 127
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    sput-object v0, Labb;->B:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 129
    sput-boolean v2, Labb;->C:Z

    .line 131
    sput-boolean v2, Labb;->D:Z

    .line 137
    sput v3, Labb;->E:I

    .line 139
    const-wide/16 v0, 0x0

    sput-wide v0, Labb;->F:J

    .line 150
    sput-object v4, Labb;->H:Ladp;

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    sput-object v1, Labb;->b:Lcom/iflytek/base/contacts/entities/ContactInfo;

    .line 205
    sput-object v1, Labb;->c:Ljava/util/List;

    .line 206
    sput-object v1, Labb;->d:Ljava/lang/Object;

    .line 207
    sput-object v1, Labb;->e:Ljava/util/List;

    .line 208
    sput-boolean v2, Labb;->f:Z

    .line 209
    const-string/jumbo v0, ""

    sput-object v0, Labb;->h:Ljava/lang/String;

    .line 210
    sput-object v1, Labb;->i:Ljava/lang/String;

    .line 211
    sput-object v1, Labb;->l:Ljava/util/List;

    .line 212
    sput-object v1, Labb;->n:Lade;

    .line 213
    sput-object v1, Labb;->o:Ladf;

    .line 214
    sput-object v1, Labb;->p:Ljava/util/List;

    .line 215
    sput-object v1, Labb;->g:Ljava/lang/String;

    .line 216
    sput v2, Labb;->j:I

    .line 217
    sput-object v1, Labb;->k:Ljava/lang/String;

    .line 218
    sput-object v1, Labb;->m:Lcom/iflytek/base/contacts/entities/ContactInfo;

    .line 219
    return-void
.end method

.method public static a(I)V
    .locals 0
    .param p0, "mFeature"    # I

    .prologue
    .line 440
    sput p0, Labb;->E:I

    .line 441
    return-void
.end method

.method public static a(J)V
    .locals 0
    .param p0, "mFeBubbleGoneTime"    # J

    .prologue
    .line 432
    sput-wide p0, Labb;->F:J

    .line 433
    return-void
.end method

.method public static a(Ladp;)V
    .locals 0
    .param p0, "pSpeechTipsView"    # Ladp;

    .prologue
    .line 364
    sput-object p0, Labb;->H:Ladp;

    .line 365
    return-void
.end method

.method public static a(Lcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 0
    .param p0, "mContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 254
    sput-object p0, Labb;->u:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 255
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 464
    sput-object p0, Labb;->d:Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 344
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Labb;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {p0}, Labb;->e(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "newtime":I
    sput v0, Labb;->x:I

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "blessContentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p0, Labb;->A:Ljava/util/ArrayList;

    .line 164
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "contactSets":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    sput-object p0, Labb;->e:Ljava/util/List;

    .line 473
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "issingldial"    # Z

    .prologue
    .line 171
    sput-boolean p0, Labb;->y:Z

    .line 172
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Labb;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static b(I)V
    .locals 0
    .param p0, "retryCount"    # I

    .prologue
    .line 571
    sput p0, Labb;->j:I

    .line 572
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 496
    sget-object v0, Labb;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 497
    const-string/jumbo v0, ""

    sput-object v0, Labb;->h:Ljava/lang/String;

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_1

    const-string/jumbo p0, ""

    .end local p0    # "smsContent":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labb;->h:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "showContentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sput-object p0, Labb;->l:Ljava/util/List;

    .line 520
    return-void
.end method

.method public static b(Z)V
    .locals 0
    .param p0, "isSaveContact"    # Z

    .prologue
    .line 262
    sput-boolean p0, Labb;->t:Z

    .line 263
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string/jumbo v0, "\n-"

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0
    .param p0, "retryContent"    # Ljava/lang/String;

    .prologue
    .line 579
    sput-object p0, Labb;->k:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "pShowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sput-object p0, Labb;->I:Ljava/util/List;

    .line 592
    return-void
.end method

.method public static c(Z)V
    .locals 0
    .param p0, "mManulSelectSim"    # Z

    .prologue
    .line 416
    sput-boolean p0, Labb;->C:Z

    .line 417
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    sget-object v0, Labb;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Labb;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 321
    sget-object v0, Labb;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Labb;->z:Ljava/lang/String;

    .line 322
    sget-object v0, Labb;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 326
    :goto_0
    sget-object v0, Labb;->z:Ljava/lang/String;

    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Labb;->z:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 0
    .param p0, "mLatestCallEntry"    # Z

    .prologue
    .line 424
    sput-boolean p0, Labb;->D:Z

    .line 425
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string/jumbo v1, "[0-9]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 374
    .local v0, "result":Z
    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 335
    sget v0, Labb;->x:I

    return v0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 2
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, "newTime":I
    if-ltz v0, :cond_0

    const/16 v1, 0x3a98

    if-gt v0, v1, :cond_0

    .line 387
    .end local v0    # "newTime":I
    :goto_0
    return v0

    .restart local v0    # "newTime":I
    :cond_0
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method public static f()Ladp;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Labb;->H:Ladp;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 420
    sget-boolean v0, Labb;->D:Z

    return v0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 428
    sget-wide v0, Labb;->F:J

    return-wide v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 436
    sget v0, Labb;->E:I

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Labb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static k()I
    .locals 2

    .prologue
    .line 563
    sget v0, Labb;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Labb;->j:I

    return v0
.end method

.method public static l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Labb;->G:Landroid/content/Context;

    return-object v0
.end method

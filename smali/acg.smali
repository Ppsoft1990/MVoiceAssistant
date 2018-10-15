.class public Lacg;
.super Lace;
.source "CallOperationData.java"


# instance fields
.field private a:Lcom/iflytek/base/contacts/entities/ContactSet;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Lcom/iflytek/common/adaptation/entity/SimCard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lace;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacg;->d:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lacg;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 27
    const-string/jumbo v0, "telephone"

    invoke-virtual {p0, v0}, Lacg;->b(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 101
    iput-object p1, p0, Lacg;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 102
    return-void
.end method

.method public b(Lcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 1
    .param p1, "mDirectCallContact"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 43
    iput-object p1, p0, Lacg;->a:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacg;->d:Ljava/lang/Boolean;

    .line 47
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDirectCallNumber"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lacg;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDefualtCallNumber"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lacg;->c:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public m()Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lacg;->a:Lcom/iflytek/base/contacts/entities/ContactSet;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lacg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lacg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lacg;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public q()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lacg;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method

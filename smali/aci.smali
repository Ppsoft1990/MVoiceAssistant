.class public Laci;
.super Lace;
.source "MessageOperationData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/common/adaptation/entity/SimCard;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lacq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lace;-><init>()V

    .line 31
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v0, p0, Laci;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 34
    iput-boolean v1, p0, Laci;->f:Z

    .line 37
    iput-boolean v1, p0, Laci;->g:Z

    .line 40
    iput-boolean v1, p0, Laci;->h:Z

    .line 43
    iput-boolean v1, p0, Laci;->i:Z

    .line 49
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0}, Laci;->b(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lacq;)V
    .locals 0
    .param p1, "messageEditHandler"    # Lacq;

    .prologue
    .line 175
    iput-object p1, p0, Laci;->j:Lacq;

    .line 176
    return-void
.end method

.method public a(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 1
    .param p1, "smsContactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laci;->d:Ljava/util/List;

    .line 122
    iget-object v0, p0, Laci;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 131
    iput-object p1, p0, Laci;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 132
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "smsContactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Laci;->d:Ljava/util/List;

    .line 114
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isReceiverCardFlag"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Laci;->f:Z

    .line 142
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSmsContent"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Laci;->a:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "isMutiSmsFlag"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Laci;->h:Z

    .line 160
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Laci;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public d(Z)V
    .locals 0
    .param p1, "isShowNoContentTip"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Laci;->i:Z

    .line 168
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Laci;->c:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Laci;->a:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, ""

    iget-object v1, p0, Laci;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laci;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laci;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Laci;->d:Ljava/util/List;

    return-object v0
.end method

.method public q()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Laci;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Laci;->f:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Laci;->i:Z

    return v0
.end method

.method public t()Lacq;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Laci;->j:Lacq;

    return-object v0
.end method

.class public Laau;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "ContactFilterResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/iflytek/common/adaptation/entity/SimCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Laau;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p1, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 130
    iput-object p1, p0, Laau;->l:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Laau;->g:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public a(Ljava/util/List;)V
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
    .line 72
    .local p1, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Laau;->c:Ljava/util/List;

    .line 73
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "mutiSmsFlag"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Laau;->f:Z

    .line 57
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Laau;->b:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public b(Ljava/util/List;)V
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
    .line 80
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Laau;->e:Ljava/util/List;

    .line 81
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Laau;->f:Z

    return v0
.end method

.method public c()Ljava/util/List;
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
    .line 68
    iget-object v0, p0, Laau;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsContentType"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Laau;->h:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public c(Ljava/util/List;)V
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
    .line 96
    .local p1, "nameTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Laau;->d:Ljava/util/List;

    .line 97
    return-void
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
    .line 76
    iget-object v0, p0, Laau;->e:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsContentFrom"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Laau;->i:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Laau;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsContentId"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Laau;->j:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public f()Ljava/util/List;
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
    .line 92
    iget-object v0, p0, Laau;->d:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsBlessId"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Laau;->k:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Laau;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laau;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Laau;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Laau;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Laau;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Laau;->l:Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Laau;->a:Ljava/lang/String;

    .line 65
    return-void
.end method

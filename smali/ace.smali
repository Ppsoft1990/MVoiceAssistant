.class public Lace;
.super Lacf;
.source "BaseContactOperationData.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/iflytek/base/contacts/entities/ContactSet;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lacf;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lace;->d:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lace;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lace;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "mContinuousNoResultCount"    # I

    .prologue
    .line 122
    iput p1, p0, Lace;->f:I

    .line 123
    return-void
.end method

.method public a(Lcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 0
    .param p1, "selectedContact"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 103
    iput-object p1, p0, Lace;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContactNameForNoResultTip"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lace;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "mContactNameGrammarsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    iput-object p1, p0, Lace;->c:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method public a(Ljava/util/List;)V
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
    .line 46
    .local p1, "mContactListForSelect":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    iput-object p1, p0, Lace;->a:Ljava/util/List;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "flagShowQuestionView"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lace;->d:Z

    .line 88
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lace;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lace;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lace;->d:Z

    return v0
.end method

.method public e()Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lace;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lace;->f:I

    return v0
.end method

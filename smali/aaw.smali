.class public Laaw;
.super Ljava/lang/Object;
.source "InteractionResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Intent;

.field private c:[Ljava/lang/String;

.field private d:Ljava/util/HashMap;
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

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Laaw;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iput-object p1, p0, Laaw;->b:Landroid/content/Intent;

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttsContent"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Laaw;->f:Ljava/lang/String;

    .line 66
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
    .line 57
    .local p1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    iput-object p1, p0, Laaw;->d:Ljava/util/HashMap;

    .line 58
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
    .line 73
    .local p1, "showContactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Laaw;->e:Ljava/util/List;

    .line 74
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0
    .param p1, "grammars"    # [Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Laaw;->c:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "showContent"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Laaw;->g:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "retryContent"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Laaw;->h:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Laaw;->a:Ljava/lang/String;

    .line 98
    return-void
.end method

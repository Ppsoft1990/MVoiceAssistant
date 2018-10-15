.class public Lym;
.super Ljava/lang/Object;
.source "BlcProtocolParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lym$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lym;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lym$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lym;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "nValue"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lym;->a:Ljava/util/ArrayList;

    new-instance v1, Lym$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lym$a;-><init>(Lym;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sValue"    # Ljava/lang/String;

    .prologue
    .line 27
    move-object v0, p2

    .line 28
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v0, ""

    .line 31
    :cond_0
    iget-object v1, p0, Lym;->a:Ljava/util/ArrayList;

    new-instance v2, Lym$a;

    invoke-direct {v2, p0, p1, v0}, Lym$a;-><init>(Lym;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

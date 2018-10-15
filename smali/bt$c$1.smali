.class Lbt$c$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Lbv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbt$c;->a(Lbt;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbt;

.field final synthetic b:Lbt$c;


# direct methods
.method constructor <init>(Lbt$c;Lbt;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbt$c$1;->b:Lbt$c;

    iput-object p2, p0, Lbt$c$1;->a:Lbt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lbt$c$1;->a:Lbt;

    invoke-virtual {v1, p1}, Lbt;->a(I)Lbp;

    move-result-object v0

    .line 114
    .local v0, "compatInfo":Lbp;
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lbp;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v5, p0, Lbt$c$1;->a:Lbt;

    invoke-virtual {v5, p1, p2}, Lbt;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lbp;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 103
    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbp;

    .line 105
    .local v2, "infoCompat":Lbp;
    invoke-virtual {v2}, Lbp;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "infoCompat":Lbp;
    :cond_0
    return-object v4
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-object v0, p0, Lbt$c$1;->a:Lbt;

    invoke-virtual {v0, p1, p2, p3}, Lbt;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 2
    .param p1, "focus"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lbt$c$1;->a:Lbt;

    invoke-virtual {v1, p1}, Lbt;->b(I)Lbp;

    move-result-object v0

    .line 124
    .local v0, "compatInfo":Lbp;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lbp;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

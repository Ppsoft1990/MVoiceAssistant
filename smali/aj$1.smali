.class Laj$1;
.super Lan;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laj;->b()Lan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lan",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laj;


# direct methods
.method constructor <init>(Laj;)V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Laj$1;, "Laj.1;"
    iput-object p1, p0, Laj$1;->a:Laj;

    invoke-direct {p0}, Lan;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Laj$1;, "Laj.1;"
    iget-object v0, p0, Laj$1;->a:Laj;

    iget v0, v0, Laj;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Laj$1;, "Laj.1;"
    if-nez p1, :cond_0

    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {v0}, Laj;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Laj;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 81
    .local p0, "this":Laj$1;, "Laj.1;"
    iget-object v0, p0, Laj$1;->a:Laj;

    iget-object v0, v0, Laj;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Laj$1;, "Laj.1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {v0, p1, p2}, Laj;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 111
    .local p0, "this":Laj$1;, "Laj.1;"
    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {v0, p1}, Laj;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Laj$1;, "Laj.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {v0, p1, p2}, Laj;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Laj$1;, "Laj.1;"
    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {v0, p1}, Laj;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Laj$1;, "Laj.1;"
    iget-object v0, p0, Laj$1;->a:Laj;

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Laj$1;, "Laj.1;"
    iget-object v0, p0, Laj$1;->a:Laj;

    invoke-virtual {v0}, Laj;->clear()V

    .line 117
    return-void
.end method

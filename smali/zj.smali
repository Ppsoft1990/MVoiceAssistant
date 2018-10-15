.class public Lzj;
.super Ljava/lang/Object;
.source "BlcTimeRange.java"


# instance fields
.field private a:Lzi;

.field private b:Lzi;


# direct methods
.method public constructor <init>(Lzi;Lzi;)V
    .locals 0
    .param p1, "startPoint"    # Lzi;
    .param p2, "endPoint"    # Lzi;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lzj;->a:Lzi;

    .line 10
    iput-object p2, p0, Lzj;->b:Lzi;

    .line 11
    return-void
.end method


# virtual methods
.method public a()Lzi;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lzj;->b:Lzi;

    return-object v0
.end method

.method public b()Lzi;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lzj;->a:Lzi;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    if-ne p0, p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v1

    .line 17
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 20
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 21
    check-cast v0, Lzj;

    .line 22
    .local v0, "other":Lzj;
    iget-object v3, p0, Lzj;->b:Lzi;

    if-nez v3, :cond_4

    .line 23
    iget-object v3, v0, Lzj;->b:Lzi;

    if-eqz v3, :cond_5

    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_4
    iget-object v3, p0, Lzj;->b:Lzi;

    iget-object v4, v0, Lzj;->b:Lzi;

    invoke-virtual {v3, v4}, Lzi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_5
    iget-object v3, p0, Lzj;->a:Lzi;

    if-nez v3, :cond_6

    .line 28
    iget-object v3, v0, Lzj;->a:Lzi;

    if-eqz v3, :cond_0

    move v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_6
    iget-object v3, p0, Lzj;->a:Lzi;

    iget-object v4, v0, Lzj;->a:Lzi;

    invoke-virtual {v3, v4}, Lzi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 31
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 37
    const/16 v0, 0x1f

    .line 38
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 39
    .local v1, "result":I
    iget-object v2, p0, Lzj;->b:Lzi;

    if-nez v2, :cond_0

    move v2, v3

    .line 40
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 41
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lzj;->a:Lzi;

    if-nez v4, :cond_1

    .line 42
    :goto_1
    add-int v1, v2, v3

    .line 43
    return v1

    .line 39
    :cond_0
    iget-object v2, p0, Lzj;->b:Lzi;

    .line 40
    invoke-virtual {v2}, Lzi;->hashCode()I

    move-result v2

    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, p0, Lzj;->a:Lzi;

    .line 42
    invoke-virtual {v3}, Lzi;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BlcTimeRange [startPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzj;->a:Lzi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzj;->b:Lzi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

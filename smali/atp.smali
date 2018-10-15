.class public Latp;
.super Ljava/lang/Object;
.source "TimeRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latp$a;
    }
.end annotation


# instance fields
.field private a:Latp$a;

.field private b:Latp$a;


# direct methods
.method public constructor <init>(Latp$a;Latp$a;)V
    .locals 1
    .param p1, "start"    # Latp$a;
    .param p2, "end"    # Latp$a;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 16
    :cond_1
    iput-object p1, p0, Latp;->a:Latp$a;

    .line 17
    iput-object p2, p0, Latp;->b:Latp$a;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Latp$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Latp;->a:Latp$a;

    return-object v0
.end method

.method public b()Latp$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Latp;->b:Latp$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 55
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 56
    check-cast v0, Latp;

    .line 57
    .local v0, "other":Latp;
    iget-object v3, p0, Latp;->b:Latp$a;

    if-nez v3, :cond_4

    .line 58
    iget-object v3, v0, Latp;->b:Latp$a;

    if-eqz v3, :cond_5

    move v1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object v3, p0, Latp;->b:Latp$a;

    iget-object v4, v0, Latp;->b:Latp$a;

    invoke-virtual {v3, v4}, Latp$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_5
    iget-object v3, p0, Latp;->a:Latp$a;

    if-nez v3, :cond_6

    .line 63
    iget-object v3, v0, Latp;->a:Latp$a;

    if-eqz v3, :cond_0

    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_6
    iget-object v3, p0, Latp;->a:Latp$a;

    iget-object v4, v0, Latp;->a:Latp$a;

    invoke-virtual {v3, v4}, Latp$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 66
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 39
    const/16 v0, 0x1f

    .line 40
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 41
    .local v1, "result":I
    iget-object v2, p0, Latp;->b:Latp$a;

    if-nez v2, :cond_0

    move v2, v3

    .line 42
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 43
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Latp;->a:Latp$a;

    if-nez v4, :cond_1

    .line 44
    :goto_1
    add-int v1, v2, v3

    .line 45
    return v1

    .line 41
    :cond_0
    iget-object v2, p0, Latp;->b:Latp$a;

    .line 42
    invoke-virtual {v2}, Latp$a;->hashCode()I

    move-result v2

    goto :goto_0

    .line 43
    :cond_1
    iget-object v3, p0, Latp;->a:Latp$a;

    .line 44
    invoke-virtual {v3}, Latp$a;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Latp;->a:Latp$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", End="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Latp;->b:Latp$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

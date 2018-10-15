.class public Latp$a;
.super Ljava/lang/Object;
.source "TimeRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-le p2, v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_1
    iput p1, p0, Latp$a;->a:I

    .line 89
    iput p2, p0, Latp$a;->b:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Latp$a;->c:I

    .line 91
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Latp$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Latp$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Latp$a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 112
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 113
    check-cast v0, Latp$a;

    .line 114
    .local v0, "other":Latp$a;
    iget v3, p0, Latp$a;->a:I

    iget v4, v0, Latp$a;->a:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget v3, p0, Latp$a;->b:I

    iget v4, v0, Latp$a;->b:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    iget v3, p0, Latp$a;->c:I

    iget v4, v0, Latp$a;->c:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 119
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x1f

    .line 96
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 97
    .local v1, "result":I
    iget v2, p0, Latp$a;->a:I

    add-int/lit8 v1, v2, 0x1f

    .line 98
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Latp$a;->b:I

    add-int v1, v2, v3

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Latp$a;->c:I

    add-int v1, v2, v3

    .line 100
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Latp$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Latp$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Latp$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

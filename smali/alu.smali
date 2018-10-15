.class public Lalu;
.super Ljava/lang/Object;
.source "OpCodesData.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lalu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "expireTime"    # I

    .prologue
    .line 33
    iput p1, p0, Lalu;->a:I

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "opCodes"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lalu;->b:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isClearCache"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lalu;->c:Z

    .line 26
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lalu;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lalu;->a:I

    return v0
.end method

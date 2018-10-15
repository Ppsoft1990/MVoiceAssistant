.class public Lcom/migu/sdk/api/InitInfo;
.super Ljava/lang/Object;
.source "InitInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/migu/sdk/api/InitInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/migu/sdk/api/InitInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/migu/sdk/api/InitInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/migu/sdk/api/InitInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getcType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/migu/sdk/api/InitInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/migu/sdk/api/InitInfo;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/migu/sdk/api/InitInfo;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setCpId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/migu/sdk/api/InitInfo;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/migu/sdk/api/InitInfo;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setcType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/migu/sdk/api/InitInfo;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

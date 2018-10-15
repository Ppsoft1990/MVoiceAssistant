.class public Lcom/migu/voiceads/VideoAdConfigPatameter;
.super Ljava/lang/Object;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->key:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/VideoAdConfigPatameter;->value:Ljava/lang/String;

    return-void
.end method

.class public Lcom/migu/voiceads/MIGUAdSize;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:Lcom/migu/voiceads/MIGUAdSize;

.field public static final FULLSCREEN:Lcom/migu/voiceads/MIGUAdSize;

.field public static final INTERSTITIAL:Lcom/migu/voiceads/MIGUAdSize;

.field public static final NATIVE:Lcom/migu/voiceads/MIGUAdSize;

.field public static final SPLASH:Lcom/migu/voiceads/MIGUAdSize;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/migu/voiceads/MIGUAdSize;

    const/16 v1, 0x280

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/migu/voiceads/MIGUAdSize;-><init>(II)V

    sput-object v0, Lcom/migu/voiceads/MIGUAdSize;->BANNER:Lcom/migu/voiceads/MIGUAdSize;

    new-instance v0, Lcom/migu/voiceads/MIGUAdSize;

    const/16 v1, 0x258

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/migu/voiceads/MIGUAdSize;-><init>(II)V

    sput-object v0, Lcom/migu/voiceads/MIGUAdSize;->INTERSTITIAL:Lcom/migu/voiceads/MIGUAdSize;

    new-instance v0, Lcom/migu/voiceads/MIGUAdSize;

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2}, Lcom/migu/voiceads/MIGUAdSize;-><init>(II)V

    sput-object v0, Lcom/migu/voiceads/MIGUAdSize;->FULLSCREEN:Lcom/migu/voiceads/MIGUAdSize;

    new-instance v0, Lcom/migu/voiceads/MIGUAdSize;

    invoke-direct {v0, v3, v3}, Lcom/migu/voiceads/MIGUAdSize;-><init>(II)V

    sput-object v0, Lcom/migu/voiceads/MIGUAdSize;->SPLASH:Lcom/migu/voiceads/MIGUAdSize;

    new-instance v0, Lcom/migu/voiceads/MIGUAdSize;

    invoke-direct {v0, v3, v3}, Lcom/migu/voiceads/MIGUAdSize;-><init>(II)V

    sput-object v0, Lcom/migu/voiceads/MIGUAdSize;->NATIVE:Lcom/migu/voiceads/MIGUAdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/migu/voiceads/MIGUAdSize;->a:I

    iput p2, p0, Lcom/migu/voiceads/MIGUAdSize;->b:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/MIGUAdSize;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/MIGUAdSize;->a:I

    return v0
.end method

.method public isSizeValid(Lcom/migu/voiceads/MIGUAdSize;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/migu/voiceads/MIGUAdSize;->a:I

    iget v2, p0, Lcom/migu/voiceads/MIGUAdSize;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/migu/voiceads/MIGUAdSize;->b:I

    iget v2, p0, Lcom/migu/voiceads/MIGUAdSize;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/MIGUAdSize;->b:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/MIGUAdSize;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

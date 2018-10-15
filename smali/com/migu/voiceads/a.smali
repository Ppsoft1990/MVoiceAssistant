.class Lcom/migu/voiceads/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/MIGUFullScreenAd;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/MIGUFullScreenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/a;->a:Lcom/migu/voiceads/MIGUFullScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/FullScreenAdView;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    return-void
.end method

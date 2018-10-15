.class Lcom/migu/voiceads/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/a;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/b;->a:Lcom/migu/voiceads/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/b;->a:Lcom/migu/voiceads/view/a;

    invoke-static {v0}, Lcom/migu/voiceads/view/a;->a(Lcom/migu/voiceads/view/a;)Lcom/migu/voiceads/view/AdLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdLayout;->destroy()V

    return-void
.end method

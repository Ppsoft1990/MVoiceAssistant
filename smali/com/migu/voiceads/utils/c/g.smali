.class Lcom/migu/voiceads/utils/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->d()Lcom/migu/voiceads/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->d()Lcom/migu/voiceads/utils/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/migu/voiceads/utils/e;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/a;->b(Lcom/migu/voiceads/utils/e;)V

    :cond_0
    return-void
.end method

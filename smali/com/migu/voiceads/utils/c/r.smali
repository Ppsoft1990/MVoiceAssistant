.class Lcom/migu/voiceads/utils/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/migu/voiceads/utils/c/a$b;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/r;->a:Lcom/migu/voiceads/utils/c/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/r;->a:Lcom/migu/voiceads/utils/c/a$b;

    invoke-interface {v0}, Lcom/migu/voiceads/utils/c/a$b;->a()V

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->d()Lcom/migu/voiceads/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->d()Lcom/migu/voiceads/utils/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/migu/voiceads/utils/e;->a()V

    invoke-static {v1}, Lcom/migu/voiceads/utils/c/a;->b(Lcom/migu/voiceads/utils/e;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->d()Lcom/migu/voiceads/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->d()Lcom/migu/voiceads/utils/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/migu/voiceads/utils/e;->b()V

    invoke-static {v1}, Lcom/migu/voiceads/utils/c/a;->b(Lcom/migu/voiceads/utils/e;)V

    goto :goto_0
.end method

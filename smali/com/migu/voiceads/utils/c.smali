.class Lcom/migu/voiceads/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/b$a;

.field private final synthetic b:Lcom/migu/voiceads/utils/b;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/b$a;Lcom/migu/voiceads/utils/b;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c;->a:Lcom/migu/voiceads/utils/b$a;

    iput-object p2, p0, Lcom/migu/voiceads/utils/c;->b:Lcom/migu/voiceads/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/c;->a:Lcom/migu/voiceads/utils/b$a;

    invoke-static {v0}, Lcom/migu/voiceads/utils/b$a;->a(Lcom/migu/voiceads/utils/b$a;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/c;->b:Lcom/migu/voiceads/utils/b;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

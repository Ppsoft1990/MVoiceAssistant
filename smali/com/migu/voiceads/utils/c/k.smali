.class Lcom/migu/voiceads/utils/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/k;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/migu/voiceads/utils/c/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/k;->a:Landroid/app/Activity;

    new-instance v1, Lcom/migu/voiceads/utils/c/l;

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/k;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/migu/voiceads/utils/c/k;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/migu/voiceads/utils/c/l;-><init>(Lcom/migu/voiceads/utils/c/k;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Lcom/migu/voiceads/utils/c/a$b;)V

    return-void
.end method

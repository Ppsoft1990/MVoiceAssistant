.class Lcom/migu/voiceads/utils/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/a;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/o;->a:Lcom/migu/voiceads/utils/c/a;

    iput-object p2, p0, Lcom/migu/voiceads/utils/c/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/c/o;)Lcom/migu/voiceads/utils/c/a;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/o;->a:Lcom/migu/voiceads/utils/c/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/o;->a:Lcom/migu/voiceads/utils/c/a;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/a;->b(Lcom/migu/voiceads/utils/c/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/migu/voiceads/utils/c/p;

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/o;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/migu/voiceads/utils/c/p;-><init>(Lcom/migu/voiceads/utils/c/o;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Lcom/migu/voiceads/utils/c/a$b;)V

    return-void
.end method

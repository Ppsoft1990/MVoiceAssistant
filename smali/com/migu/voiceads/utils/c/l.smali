.class Lcom/migu/voiceads/utils/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/c/a$b;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/k;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/k;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/l;->a:Lcom/migu/voiceads/utils/c/k;

    iput-object p2, p0, Lcom/migu/voiceads/utils/c/l;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/migu/voiceads/utils/c/l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string/jumbo v0, "\u6b63\u5728\u4e0b\u8f7d"

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/l;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

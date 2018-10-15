.class Lcom/migu/voiceads/utils/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/c/a$b;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/o;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/p;->a:Lcom/migu/voiceads/utils/c/o;

    iput-object p2, p0, Lcom/migu/voiceads/utils/c/p;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/p;->a:Lcom/migu/voiceads/utils/c/o;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/o;->a(Lcom/migu/voiceads/utils/c/o;)Lcom/migu/voiceads/utils/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

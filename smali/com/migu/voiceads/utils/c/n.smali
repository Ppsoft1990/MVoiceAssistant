.class Lcom/migu/voiceads/utils/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/c/a$c;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/m;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/n;->a:Lcom/migu/voiceads/utils/c/m;

    iput-object p2, p0, Lcom/migu/voiceads/utils/c/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/n;->a:Lcom/migu/voiceads/utils/c/m;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/m;->a(Lcom/migu/voiceads/utils/c/m;)Lcom/migu/voiceads/utils/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/migu/voiceads/utils/download/a/b/a$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/utils/download/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/download/a/b/a;


# direct methods
.method private constructor <init>(Lcom/migu/voiceads/utils/download/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/a/b/a$a;->a:Lcom/migu/voiceads/utils/download/a/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/migu/voiceads/utils/download/a/b/a;Lcom/migu/voiceads/utils/download/a/b/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/a$a;-><init>(Lcom/migu/voiceads/utils/download/a/b/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a$a;->a:Lcom/migu/voiceads/utils/download/a/b/a;

    invoke-static {v0, p2}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Lcom/migu/voiceads/utils/download/a/b/a;Landroid/content/Intent;)V

    return-void
.end method

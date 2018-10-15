.class Lcom/migu/voiceads/utils/c/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/a;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6709\u5e94\u7528\u88abadd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/c/a;->c()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/utils/c/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/c/a$a;

    iget v2, v0, Lcom/migu/voiceads/utils/c/a$a;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "Ad_Android_SDK"

    iget-object v3, v0, Lcom/migu/voiceads/utils/c/a$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Ad_Android_SDK"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/migu/voiceads/utils/c/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput v4, v0, Lcom/migu/voiceads/utils/c/a$a;->h:I

    iget-object v2, v0, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    iget-object v0, v0, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/utils/c/a;Lorg/json/JSONArray;)V

    :cond_3
    :goto_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v2, "\u5b89\u88c5\u76d1\u63a7"

    invoke-static {v0, v2}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    iget-object v0, v0, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    invoke-static {v2, v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/utils/c/a;Lorg/json/JSONArray;)V

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/migu/voiceads/utils/c/a$a;->b:Ljava/lang/String;

    const-string/jumbo v3, "noPackage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v4, v0, Lcom/migu/voiceads/utils/c/a$a;->h:I

    iget-object v2, v0, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    iget-object v0, v0, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a/a;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/utils/c/a;Lorg/json/JSONArray;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/migu/voiceads/utils/c/b;->a:Lcom/migu/voiceads/utils/c/a;

    iget-object v0, v0, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    invoke-static {v2, v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/utils/c/a;Lorg/json/JSONArray;)V

    goto :goto_1
.end method

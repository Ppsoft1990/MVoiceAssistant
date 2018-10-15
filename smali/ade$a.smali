.class Lade$a;
.super Landroid/content/BroadcastReceiver;
.source "WidgetSmsInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lade;


# direct methods
.method private constructor <init>(Lade;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lade$a;->a:Lade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lade;Lade$1;)V
    .locals 0
    .param p1, "x0"    # Lade;
    .param p2, "x1"    # Lade$1;

    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lade$a;-><init>(Lade;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, -0x1

    .line 1271
    const-string/jumbo v9, "ON_CONTACT_CHANGE"

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1272
    .local v0, "contactId":J
    cmp-long v9, v0, v10

    if-nez v9, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v9, p0, Lade$a;->a:Lade;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lade;->b(Lade;Ljava/lang/String;)Ljava/lang/String;

    .line 1278
    invoke-static {p1, v0, v1}, Lade;->a(Landroid/content/Context;J)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v2

    .line 1279
    .local v2, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v2, :cond_3

    .line 1280
    iget-object v9, p0, Lade$a;->a:Lade;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0c006f

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lade;->b(Lade;Ljava/lang/String;)Ljava/lang/String;

    .line 1281
    const-string/jumbo v7, ""

    .line 1282
    .local v7, "numberContent":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 1283
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1284
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberTypesHashMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1285
    .local v8, "numberType":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0c0237

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1287
    iget-object v9, p0, Lade$a;->a:Lade;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lade$a;->a:Lade;

    invoke-static {v11}, Lade;->n(Lade;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lade;->b(Lade;Ljava/lang/String;)Ljava/lang/String;

    .line 1282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1289
    .end local v6    # "number":Ljava/lang/String;
    .end local v8    # "numberType":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lade$a;->a:Lade;

    iget-object v10, p0, Lade$a;->a:Lade;

    invoke-static {v10}, Lade;->n(Lade;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lade;->c(Lade;Ljava/lang/String;)Ljava/lang/String;

    .line 1299
    .end local v5    # "i":I
    .end local v7    # "numberContent":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lade$a;->a:Lade;

    invoke-static {v9}, Lade;->k(Lade;)Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v4

    check-cast v4, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 1300
    .local v4, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1301
    iget-object v9, p0, Lade$a;->a:Lade;

    invoke-static {v9}, Lade;->n(Lade;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1306
    .local v3, "contactString":Ljava/lang/String;
    iget-object v9, p0, Lade$a;->a:Lade;

    invoke-static {v9}, Lade;->l(Lade;)Lafu;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1307
    iget-object v9, p0, Lade$a;->a:Lade;

    invoke-static {v9}, Lade;->l(Lade;)Lafu;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-interface {v9, v3, v10}, Lafu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

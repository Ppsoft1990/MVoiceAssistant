.class public Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;
.super Ljava/lang/Object;


# static fields
.field private static final tag:Ljava/lang/String;


# instance fields
.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-void
.end method


# virtual methods
.method public addComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exec begin, serviceName and aciton is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , args is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/mmp/core/componentsManager/Components;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/mmp/core/componentsManager/Components;

    iget-object v1, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/Components;->init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    iget-object v1, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p3}, Lcom/iflytek/mmp/core/componentsManager/Components;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    sget-object v1, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exec end, result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->tag:Ljava/lang/String;

    const-string/jumbo v2, "exec faile"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v1, "Error"

    const-string/jumbo v2, "Error"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "{ code: \'OK\', message: \'OK\' }"

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getComponentsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/mmp/core/componentsManager/Components;

    invoke-interface {v0}, Lcom/iflytek/mmp/core/componentsManager/Components;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeComponents(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->componentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

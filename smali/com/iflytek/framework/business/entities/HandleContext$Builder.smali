.class public Lcom/iflytek/framework/business/entities/HandleContext$Builder;
.super Ljava/lang/Object;
.source "HandleContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/entities/HandleContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private componentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private widgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->widgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->componentHashMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/iflytek/framework/business/entities/HandleContext;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/iflytek/framework/business/entities/HandleContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/business/entities/HandleContext;-><init>(Lcom/iflytek/framework/business/entities/HandleContext$Builder;Lcom/iflytek/framework/business/entities/HandleContext$1;)V

    return-object v0
.end method

.method public setComponents(Ljava/util/HashMap;)Lcom/iflytek/framework/business/entities/HandleContext$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;)",
            "Lcom/iflytek/framework/business/entities/HandleContext$Builder;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->componentHashMap:Ljava/util/HashMap;

    .line 53
    return-object p0
.end method

.method public setContainer(Lcom/iflytek/framework/ui/container/WidgetContainerInterface;)Lcom/iflytek/framework/business/entities/HandleContext$Builder;
    .locals 0
    .param p1, "container"    # Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->widgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .line 48
    return-object p0
.end method

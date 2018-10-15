.class public Lcom/iflytek/framework/business/entities/HandleContext;
.super Ljava/lang/Object;
.source "HandleContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/entities/HandleContext$Builder;
    }
.end annotation


# instance fields
.field private mComponentMap:Ljava/util/HashMap;
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

.field private mContext:Landroid/content/Context;

.field private mWidgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->access$000(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->access$100(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mWidgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .line 26
    invoke-static {p1}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->access$200(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mComponentMap:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/entities/HandleContext$Builder;Lcom/iflytek/framework/business/entities/HandleContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/entities/HandleContext$Builder;
    .param p2, "x1"    # Lcom/iflytek/framework/business/entities/HandleContext$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/entities/HandleContext;-><init>(Lcom/iflytek/framework/business/entities/HandleContext$Builder;)V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mComponentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mWidgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mContext:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mComponentMap:Ljava/util/HashMap;

    .line 76
    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandleContext;->mWidgetContainerInterface:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .line 77
    return-void
.end method

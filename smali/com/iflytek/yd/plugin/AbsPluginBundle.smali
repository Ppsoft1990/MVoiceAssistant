.class public abstract Lcom/iflytek/yd/plugin/AbsPluginBundle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/plugin/IPluginBundle;


# instance fields
.field private mPluginContext:Lcom/iflytek/yd/plugin/IPluginContext;

.field private mPluginData:Lcom/iflytek/yd/plugin/IPluginResource;

.field private mPluginState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginState:I

    return-void
.end method


# virtual methods
.method public final getPluginContext()Lcom/iflytek/yd/plugin/IPluginContext;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginContext:Lcom/iflytek/yd/plugin/IPluginContext;

    return-object v0
.end method

.method public final getPluginResource()Lcom/iflytek/yd/plugin/IPluginResource;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginData:Lcom/iflytek/yd/plugin/IPluginResource;

    return-object v0
.end method

.method public final getPluginState()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginState:I

    return v0
.end method

.method public final init(Lcom/iflytek/yd/plugin/IPluginResource;Lcom/iflytek/yd/plugin/IPluginContext;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginData:Lcom/iflytek/yd/plugin/IPluginResource;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginContext:Lcom/iflytek/yd/plugin/IPluginContext;

    :cond_1
    return-void
.end method

.method public final setPluginState(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/plugin/AbsPluginBundle;->mPluginState:I

    return-void
.end method

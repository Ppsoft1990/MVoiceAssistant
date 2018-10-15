.class final Lcom/iflytek/plugin/mobius/event/PluginEvent$1;
.super Ljava/lang/Object;
.source "PluginEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/plugin/mobius/event/PluginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/plugin/mobius/event/PluginEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/plugin/mobius/event/PluginEvent;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    new-instance v0, Lcom/iflytek/plugin/mobius/event/PluginEvent;

    invoke-direct {v0, p1}, Lcom/iflytek/plugin/mobius/event/PluginEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/iflytek/plugin/mobius/event/PluginEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/plugin/mobius/event/PluginEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/plugin/mobius/event/PluginEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/iflytek/plugin/mobius/event/PluginEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/iflytek/plugin/mobius/event/PluginEvent$1;->newArray(I)[Lcom/iflytek/plugin/mobius/event/PluginEvent;

    move-result-object v0

    return-object v0
.end method

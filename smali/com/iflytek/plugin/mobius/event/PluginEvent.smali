.class public Lcom/iflytek/plugin/mobius/event/PluginEvent;
.super Ljava/lang/Object;
.source "PluginEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/plugin/mobius/event/PluginEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mType:Lcom/iflytek/plugin/mobius/event/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/iflytek/plugin/mobius/event/PluginEvent$1;

    invoke-direct {v0}, Lcom/iflytek/plugin/mobius/event/PluginEvent$1;-><init>()V

    sput-object v0, Lcom/iflytek/plugin/mobius/event/PluginEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/iflytek/plugin/mobius/event/PluginEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/plugin/mobius/event/EventType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/plugin/mobius/event/EventType;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/iflytek/plugin/mobius/event/PluginEvent;->mType:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/iflytek/plugin/mobius/event/EventType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/event/PluginEvent;->mType:Lcom/iflytek/plugin/mobius/event/EventType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/plugin/mobius/event/EventType;

    iput-object v0, p0, Lcom/iflytek/plugin/mobius/event/PluginEvent;->mType:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 36
    return-void
.end method

.method public setType(Lcom/iflytek/plugin/mobius/event/EventType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/plugin/mobius/event/EventType;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/iflytek/plugin/mobius/event/PluginEvent;->mType:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/event/PluginEvent;->mType:Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 32
    return-void
.end method

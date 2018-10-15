.class Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mHour:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mMinute:I

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 331
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 332
    iput p2, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mHour:I

    .line 333
    iput p3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mMinute:I

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$1;

    .prologue
    .line 324
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 353
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return-void
.end method

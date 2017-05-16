package views.logins;

import react.React;
import react.ReactComponent.ReactElement;
import react.ReactComponent.ReactComponentOfProps;

typedef GoogleBtnProps = {
    @:optional var onClicked: Void->Void;
    @:optional var label:String;
};

class GoogleBtn extends ReactComponentOfProps<GoogleBtnProps> {
    public function new(props:GoogleBtnProps) {
        if(props.label == null)
            props.label = "Sign in with Google";
        super(props);
    }

    private function login(e:js.html.Event):Void {
        e.preventDefault();
        Main.console.log("clicked sign in with Google");
        if(props.onClicked != null)
            props.onClicked();
    }

    public override function render():ReactElement {
        return
            React.createElement("div", { style: style, onClick: login },
                React.createElement("div", { style: iconStyle },
                    React.createElement("div", { style: svgWrapperStyle },
                        React.createElement("svg", {
                            xmlns:"http://www.w3.org/2000/svg",
                            width:"18px",
                            height:"18px",
                            viewBox:"0 0 48 48",
                            style: svgStyle},
                                React.createElement("g", {},
                                    React.createElement("path", { fill:"#EA4335", d:"M24 9.5c3.54 0 6.71 1.22 9.21 3.6l6.85-6.85C35.9 2.38 30.47 0 24 0 14.62 0 6.51 5.38 2.56 13.22l7.98 6.19C12.43 13.72 17.74 9.5 24 9.5z" }),
                                    React.createElement("path", { fill:"#4285F4", d:"M46.98 24.55c0-1.57-.15-3.09-.38-4.55H24v9.02h12.94c-.58 2.96-2.26 5.48-4.78 7.18l7.73 6c4.51-4.18 7.09-10.36 7.09-17.65z" }),
                                    React.createElement("path", { fill:"#FBBC05", d:"M10.53 28.59c-.48-1.45-.76-2.99-.76-4.59s.27-3.14.76-4.59l-7.98-6.19C.92 16.46 0 20.12 0 24c0 3.88.92 7.54 2.56 10.78l7.97-6.19z" }),
                                    React.createElement("path", { fill:"#34A853", d:"M24 48c6.48 0 11.93-2.13 15.89-5.81l-7.73-6c-2.15 1.45-4.92 2.3-8.16 2.3-6.26 0-11.57-4.22-13.47-9.91l-7.98 6.19C6.51 42.62 14.62 48 24 48z" }),
                                    React.createElement("path", { fill:"none", d:"M0 0h48v48H0z" })
                                )
                            )
                    )
                ),
                React.createElement("span", {}, props.label)
            );
    }

    private static var style = {
        backgroundColor: '#4285f4',
        color: '#fff',
        height: '50px',
        width: '240px',
        border: 'none',
        textAlign: 'center',
        verticalAlign: 'center',
        fontSize: '16px',
        lineHeight: '48px',
        display: 'block',
        transition: 'background-color .218s,border-color .218s,box-shadow .218s',
        fontFamily: 'Roboto,arial,sans-serif',
        cursor: 'pointer'
    }

    private static var iconStyle = {
        width: '48px',
        height: '48px',
        textAlign: 'center',
        verticalAlign: 'center',
        display: 'block',
        marginTop: '1px',
        marginLeft: '1px',
        float: 'left',
        backgroundColor: '#fff',
        borderRadius: '1px',
        whiteSpace: 'nowrap'
    }

    private static var svgWrapperStyle = { padding: '15px' }

    private static var svgStyle = {
        width: '18px',
        height: '18px',
        display: 'block'
    }
}
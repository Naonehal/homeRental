<template>
    <div>
        <Navbar />
    </div>

    <div class="relative z-0 h-50 sm:h-[36rem] font-serif">
        <img src="/images/listing.jpg" alt="listing" class="h-full w-full object-cover">
        <div class="absolute inset-0 bg-black opacity-70"></div>

        <div class="absolute inset-0">
            <div class="conatiner mx-auto px-4 sm:px-60 h-full w-full flex flex-col justify-center sm:justify-end">
                <div class="bg-primary w-2/3 border border-none rounded-none py-4 px-8 sm:mb-16">
                    <div class="mt-4 text-xl text-hover">Get in touch!</div>
                    <div class="mt-2 text-xl sm:text-4xl text-white font-bold mb-4">
                        Contact Us
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div> <!-- Comment -->

        <div class="container mx-auto py-8 sm:py-12 px-4 sm:px-10">
            <div class="grid justify-center">
                <div><span class="text-gray-500">Address:</span> 123 Main St, Abbotsford, CA </div>
                <div><span class="text-gray-500">Phone:</span> 555-555-5555 </div>
                <div><span class="text-gray-500">Email:</span> info@homefrontrentals.com </div>
            </div>

            <div class="mt-8 sm:mt-16 grid sm:grid-cols-2 ">
                <div class="ml-10">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10464.207244610787!2d-122.2852935!3d49.0286216!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54844abe35ff8cfd%3A0x6189b1763e4cf69!2sUniversity%20of%20the%20Fraser%20Valley!5e0!3m2!1sen!2sca!4v1681125051061!5m2!1sen!2sca"
                        width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>

                </div>

                <div>

                    <iframe id="JotFormIFrame-231000934240237" title="General Inquiry Contact Form"
                        onload="window.parent.scrollTo(0,0)" allowtransparency="true" allowfullscreen="true"
                        allow="geolocation; microphone; camera" src="https://form.jotform.com/231000934240237"
                        frameborder="0" style="min-width:100%;max-width:100%;height:539px;border:none;" scrolling="no">
                    </iframe>


                </div>


            </div>

        </div>
    </div>

    <div>
        <Footer />
    </div>
</template>


<script setup>
import Navbar from "./navbar.vue"
import Footer from "./footer.vue"

// import { Head, Link, useForm } from "@inertiajs/vue3";


</script>


<script type="text/javascript">
var ifr = document.getElementById("JotFormIFrame-231000934240237");
if (ifr) {
    var src = ifr.src;
    var iframeParams = [];
    if (window.location.href && window.location.href.indexOf("?") > -1) {
        iframeParams = iframeParams.concat(window.location.href.substr(window.location.href.indexOf("?") + 1).split('&'));
    }
    if (src && src.indexOf("?") > -1) {
        iframeParams = iframeParams.concat(src.substr(src.indexOf("?") + 1).split("&"));
        src = src.substr(0, src.indexOf("?"))
    }
    iframeParams.push("isIframeEmbed=1");
    ifr.src = src + "?" + iframeParams.join('&');
}
window.handleIFrameMessage = function (e) {
    if (typeof e.data === 'object') { return; }
    var args = e.data.split(":");
    if (args.length > 2) { iframe = document.getElementById("JotFormIFrame-" + args[(args.length - 1)]); } else { iframe = document.getElementById("JotFormIFrame"); }
    if (!iframe) { return; }
    switch (args[0]) {
        case "scrollIntoView":
            iframe.scrollIntoView();
            break;
        case "setHeight":
            iframe.style.height = args[1] + "px";
            if (!isNaN(args[1]) && parseInt(iframe.style.minHeight) > parseInt(args[1])) {
                iframe.style.minHeight = args[1] + "px";
            }
            break;
        case "collapseErrorPage":
            if (iframe.clientHeight > window.innerHeight) {
                iframe.style.height = window.innerHeight + "px";
            }
            break;
        case "reloadPage":
            window.location.reload();
            break;
        case "loadScript":
            if (!window.isPermitted(e.origin, ['jotform.com', 'jotform.pro'])) { break; }
            var src = args[1];
            if (args.length > 3) {
                src = args[1] + ':' + args[2];
            }
            var script = document.createElement('script');
            script.src = src;
            script.type = 'text/javascript';
            document.body.appendChild(script);
            break;
        case "exitFullscreen":
            if (window.document.exitFullscreen) window.document.exitFullscreen();
            else if (window.document.mozCancelFullScreen) window.document.mozCancelFullScreen();
            else if (window.document.mozCancelFullscreen) window.document.mozCancelFullScreen();
            else if (window.document.webkitExitFullscreen) window.document.webkitExitFullscreen();
            else if (window.document.msExitFullscreen) window.document.msExitFullscreen();
            break;
    }
    var isJotForm = (e.origin.indexOf("jotform") > -1) ? true : false;
    if (isJotForm && "contentWindow" in iframe && "postMessage" in iframe.contentWindow) {
        var urls = { "docurl": encodeURIComponent(document.URL), "referrer": encodeURIComponent(document.referrer) };
        iframe.contentWindow.postMessage(JSON.stringify({ "type": "urls", "value": urls }), "*");
    }
};
window.isPermitted = function (originUrl, whitelisted_domains) {
    var url = document.createElement('a');
    url.href = originUrl;
    var hostname = url.hostname;
    var result = false;
    if (typeof hostname !== 'undefined') {
        whitelisted_domains.forEach(function (element) {
            if (hostname.slice((-1 * element.length - 1)) === '.'.concat(element) || hostname === element) {
                result = true;
            }
        });
        return result;
    }
};
if (window.addEventListener) {
    window.addEventListener("message", handleIFrameMessage, false);
} else if (window.attachEvent) {
    window.attachEvent("onmessage", handleIFrameMessage);
}
</script>
